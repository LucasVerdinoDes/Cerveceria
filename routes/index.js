var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var novedadesModel = require('../models/novedadesModel');
var cloudinary = require ('cloudinary').v2;
/* GET home page. */
router.get('/', async function (req, res, next) {
  novedades = await novedadesModel.getNovedades();
  novedades = novedades.splice(0,5);

  novedades = novedades.map(novedad=>{
    if (novedad.img_id){
      const imagen = cloudinary.url(novedad.img_id,{
        width: 120,
        height: 85,
        crop: 'fill'
      });
      return{
       ...novedad,
        imagen
      }
    }else {
      return {
        ...novedad,
        imagen:'/images/zapato.jpg'
      }
    }
  });





  res.render('index', {novedades});
});

router.post('/', async (req, res, next) => {
  console.log(req.body);
  var nombre = req.body.nombre;
  var apellido = req.body.apellido;
  var email = req.body.email;
  var tel = req.body.tel;
  var mensaje = req.body.mensaje;


  var obj = {
    to: 'verdinolucas@gmail.com',
    subject: 'contacto web',
    html: nombre + apellido + " se contacto a través de la web y quiere mas información a este correo: " + email + ". <br> Además hizo el siguiente comentario: " + mensaje +". <br> Su tel es:" + tel
  }
  var transport = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PASS,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  });
  var info = await transport.sendMail(obj);
  res.render('index', {
    message: 'Mensaje enviado correctamente'
  });
});

module.exports = router;
