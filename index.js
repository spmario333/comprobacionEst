const express = require('express');
const cors = require('cors')
const { db, promiseDB } = require('./database/db')
require('dotenv').config()

//conexion con servidor 
const app = express();




// esto (CORS) es para poder usar desde varios dominio el backend
app.use(cors())

app.use(express.static('./public'))





app.use(express.json())

//Rutas

app.use('/api/contact', require('./routes/contact'))


app.listen(process.env.PORT, () => {
    console.log(`Servidor Corriendo en el puerto ${process.env.PORT}`)
})