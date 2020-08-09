var express = require('express');
var router = express.Router();
const { getCourses } = require ('../models/coursesModel');

/* GET home page. */

router.get("/", async(req,res) => {
    try{
      const courses = await getCourses();
      console.log(courses)
      res.render('about', { title: 'Arte Estilo Patt - Info', courses });
    }catch(error){
      console.log(error);
    }
});


module.exports = router;