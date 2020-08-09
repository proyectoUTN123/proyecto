var express = require('express');
var router = express.Router();
const {logueado} = require('../models/usersModel');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('login', { title: 'Arte Estilo Patt - Login' });
});

router.post("/", async (req, res, next) => {
  try{ 
  var usuario = req.body.usuario;
  var pass = req.body.password;
  const resultado = await logueado(usuario, pass);
  if(resultado.length == 1){
      console.log('logueado');
      req.session.username = usuario;
      if(resultado[0].isadmin == 1){
          req.session.administrador = true;
          res.json({ success: true });
          //res.redirect("/admin/panel")
      }
      else{
          req.session.administrador = false;
          res.json({ success: true });
          //res.redirect("/")
      }
  }
  else {
      res.json({ success: false });
  }
}catch(error){
  console.log(error);
}


});

module.exports = router;
