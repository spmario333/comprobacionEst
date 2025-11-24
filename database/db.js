require ('dotenv').config()
const mysql = require('mysql2')
const db = mysql.createPool({
    host: process.env.HOST,
    user: process.env.USER_BD,
    password: process.env.PASS,
    database: process.env.DB,
    port:process.env.PORT_DB,
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0,
    


})

db.getConnection((err, connection) => {
    if (err) {
        return console.error('Error conectando a la BD:', err.stack)
    }
    console.log('Conexión a BD exitosa. ID:', connection.threadId)
    connection.release()
})
const promiseDB = db.promise()

module.exports = {
    db,
    promiseDB
}