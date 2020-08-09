const express = require("express");
const router = express.Router();
const { main } = require("./../utils/mail");


/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('contacts', { title: 'Arte Estilo Patt - Contacto' });
});

router.post("/", async (req, res) => {
  // informacion del formulario
  const { nombre, mail, telefono, consulta } = req.body;

  const to = process.env.ADMIN_MAIL;
  const subject = "Nuevo mensaje desde el sitio web";
  const html = `Se contacto ${nombre} desde ${mail} (Telefono: ${telefono}) con la siguiente consulta : ${consulta}`;

  const finalObject = {
    to,
    subject,
    html,
  };
  console.log(finalObject);
  const resultMail = await main({ to, subject, html });
  console.log(resultMail);
  res.render("contacts", {
    message: "Mensaje enviado, en breve nos contactaremos",
  });
  // transaction id
});

module.exports = router;