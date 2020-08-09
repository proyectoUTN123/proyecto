var express = require('express');
var router = express.Router();
//const session = require("express-session");
const { getUsers, updateAdmin, updateUser } = require("../../models/usersModel");
const { getCourses } = require('../../models/coursesModel');
const { create, deleteImage, renderAdminGallery } = require('../../models/adminPanelModel');
const multer = require("multer");
const config = { dest: "./public/tmp" };
const upload = multer(config);
const imageHandler = require("./../../utils/imageHandler");

router.get("/userpanel/baja/:id/:status", async(req,res) => { 
  if(req.session.administrador) {
    try{
      var {id, status} = req.params;
      if(status == 0){
        status = 1;
        const result = await updateUser(id, status);
      }
      else{
        status = 0;
        const result = await updateUser(id, status);
      }
      res.redirect("/admin/userpanel");
    }
    catch(error){
      console.log(error);
    }
  }
});


router.get("/userpanel/change/:id/:isadmin", async(req,res) => {
  if (req.session.administrador) {
    try{
      var { id, isadmin } = req.params;
      if(isadmin == 0){
        isadmin = 1;
        const result = await updateAdmin(id, isadmin);
      }
      else{
        isadmin = 0;
        const result = await updateAdmin(id, isadmin);
      }
      res.redirect("/admin/userpanel");
    }
    catch(error){
      console.log(error);
    }}
    
    else {
      res.render("permisoError")    
    }
  });
  
  
  router.get('/panel', (req, res, next) => {
    if(req.session.administrador){
      res.render('admin/panel', { title: 'Admin Panel' });
    }
    else {
      res.render("permisoError")    
    }
  });
  
  router.get('/coursepanel', async(req,res) => {
    if(req.session.administrador){
      try{
        const courses = await getCourses();
        console.log(courses);
        res.render('admin/coursepanel', {title: "Administrar Cursos" , courses});
      }
      catch(error){
        console.log(error);
      }
    } else {
      res.render("permisoError")    
    }
    
  });
  
  router.get("/userpanel", async(req,res) => {
    if(req.session.administrador){
      try{
        const usuarios = await getUsers();
        console.log(usuarios);
        res.render("admin/userpanel", {title : "Administrar Usuarios", usuarios});
      }
      catch(error){
        console.log(error);
      }
    } else {     
      res.render("permisoError")    
    }
  });
  
  router.get("/imagePanel", async(req,res) => {
    if(req.session.administrador){
      try{
        //const usuarios = await getUsers();
        //console.log(usuarios);
        res.render("admin/imagePanel", {title : "Cargar Imagenes", });
      }
      catch(error){
        console.log(error);
      }
    } else {
      res.render("permisoError")    
    } 
  });
  
  router.get("/imagePanel/All", async(req,res) => {
    if(req.session.administrador){
      try{
        const images = await renderAdminGallery();
        console.log(images)
        res.render('admin/imagePanelAll', { title: 'Arte Estilo Patt - Galeria', images });
      }catch(error){
        console.log(error);
      }
    } else {
      res.render("permisoError")    
    } 
  });
  
  router.post("/imagePanel/alta", upload.single("imagen"), async (req, res) => {
    if(req.session.administrador){
      
      try {
        //console.log(req.body)
        //console.log(req.file)
        const handledImage = imageHandler.saveImage(req.file);
        const { nombre } = req.body;
        const object = {
          name: nombre,
          route: "images/" + handledImage,
        };
        const result = await create(object);
        res.json({ success: true });
        //console.log(`El insert id retornado es : ${result}`);
        //res.render("altaproducto", { message: "Producto dado de alta" });
      } catch (error) {
        res.json({ success: false });
        // error.hbs
      }
    } else {
      res.render("permisoError")    
    }    
    
  });

  router.get("/imagePanel/all/baja/:id/:status", async(req,res) => { 
    if(req.session.administrador) {
      try{
        var {id, status} = req.params;
        if(status == 0){
          status = 1;
          const result = await deleteImage(id, status);
        }
        else{
          status = 0;
          const result = await deleteImage(id, status);
        }
        res.redirect("/admin/imagepanel/all");
      }
      catch(error){
        console.log(error);
      }
    }
  });
  
  
  
  
  
  module.exports = router;