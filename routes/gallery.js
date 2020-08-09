var express = require('express');
var router = express.Router();
const {renderGallery} = require ('../models/galleryModel');

/* GET home page. */
router.get('/', async(req,res) => {
  try{
    const images = await renderGallery();
    console.log(images)
  res.render('gallery', { title: 'Arte Estilo Patt - Galeria', images });
}catch(error){
  console.log(error);
}
});

module.exports = router;
