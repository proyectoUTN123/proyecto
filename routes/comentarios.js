var express = require('express');
var router = express.Router();
const {getImage, getImageComment, createComment} = require('../models/comentariosModel');


/* GET home page. */
router.get('/:id', async (req,res)=> {
  //console.log(req.params)
  const id = req.params.id; // obtenemos el id que llega mediante la URL
  const imagen = await getImage(id);
  const row = await getImageComment(id);
  res.render('comentarios', {imagen, row});
  console.log(row);
  console.log(imagen);
})
router.post('/:id', async(req,res) =>{
  try{
  const {comment_text, of_user, of_image} = req.body;
  const obj = {
    comment_text,
    of_image,
  }
  const comentario = await createComment(obj)
  res.json({ success: true });
}catch(error){
  console.log(error);
  res.json({ success: false });
  
}
})
module.exports = router;


