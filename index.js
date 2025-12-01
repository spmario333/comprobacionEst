const express = require('express');
const cors = require('cors')
const { db, promiseDB } = require('./database/db')
require('dotenv').config()

//conexion con servidor 
const app = express();




// esto (CORS) es para poder usar desde varios dominio el backend
app.use(cors({
    origin:true,
    credentials: true,
    methods: ['GET','POST','PUT','DELETE', 'OPTIONS'],
    allowedHeaders: ['Content-Type', 'Authorization','Accept']
}))

app.use(express.static('./public'))





app.use(express.json())

//Rutas

app.use('/api/contact', require('./routes/contact'))




const PORT = process.env.PORT


app.listen(PORT, '0.0.0.0', () => {
  console.log(`🚀 Servidor corriendo en:`);
  console.log(`   🔗 Local: http://localhost:${PORT}`);
  console.log(`   🔗 Red: http://172.17.42.87:${PORT}`); 
  console.log(`📡 Accesible desde toda la red local`);
});