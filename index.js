require('dotenv').config();
const http = require('http');
const express = require('express');
const app = express();
const cors = require('cors');
const conn = require('./connection');
const userRoute=require('./routes/user')

//Middlewares
app.use(cors());
app.use(express.urlencoded({extends:true}));
app.use(express.json());
app.use('/user',userRoute)
app.use('/mapa',userRoute)
app.use('/calendario',userRoute)

// Crear servidor HTTP
const server = http.createServer(app);

// Definir el puerto en el que el servidor escuchará
const PORT = process.env.PORT || 3000;

server.listen(PORT, () => {
    console.log(`Servidor escuchando en el puerto ${PORT}`);
  });
// Exportar el servidor
module.exports = server;