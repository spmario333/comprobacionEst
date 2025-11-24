const { response } = require('express')
const { promiseDB } = require('../database/db')



const getContacts = async (req, res = response) => {

    try {

        const [rows] = await promiseDB.query('SELECT * FROM contact')
        // const contact = await resp.json()


        if (!rows || rows.length === 0) {
            return res.status(404).json({
                ok: false,
                msg: 'No se encontraron contactos'
            })
        }

        res.status(200).json({
            ok: true,
            contacts: rows
        })

    } catch (error) {
        console.log(error)
        res.status(500).json({
            ok: false,
            msg: 'contacte el admin'
        })
    }



}


const newContact = async (req, res = response) => {
    try {

        const { name, center, firstNum, secondNum, position, user, jefe } = req.body;

        const sql = `
            INSERT INTO contact (name, center, firstNum, secondNum, position, user, jefe) 
            VALUES (?, ?, ?, ?, ?, ?, ?)
        `
        if (!name || !center || !firstNum || !position || !user) {
            return res.status(400).json({
                ok: false,
                msg: 'Faltan campos obligatorios: name, center, firstNum, position, user'
            });
        } else {
            const [result] = await promiseDB.execute(sql, [
                name,
                center,
                firstNum,
                secondNum || null,
                position,
                user,
                jefe || 0
            ])

            if (result.affectedRows === 0) {
                return res.status(500).json({
                    ok: false,
                    msg: 'No se pudo crear el contacto'
                })
            } else {
                res.status(201).json({
                    ok: true,
                    msg: 'Contacto creado exitosamente',
                    id: result.insertId,
                    contact: {
                        id: result.insertId,
                        name,
                        center,
                        firstNum,
                        secondNum: secondNum || null,
                        position,
                        user,
                        jefe: jefe || 0
                    }
                })
            }
        }



    } catch (error) {
        console.log(error)
        if (error.code === 'ER_DUP_ENTRY') {
            return res.status(400).json({
                ok: false,
                msg: 'Ya existe un contacto con ese usuario o número'
            })
        } else {

            return res.status(500).json({
                ok: false,
                msg: 'contacte el admin'
            })
        }
    }



}



const deleteContact = async (req, res = response) => {

    const id = req.params.id

    try {

        if (!id || isNaN(id)) {
            return res.status(400).json({
                ok: false,
                msg: 'El ID debe ser un número válido'
            })
        }
        const [existingContact] = await promiseDB.execute(
            'SELECT id FROM contact WHERE id = ?',
            [id]
        )

        if (!existingContact) {
            return res.status(404).json({
                ok: false,
                msg: 'No se encontró el contacto con el ID proporcionado'
            })
        } else {
            const [result] = await promiseDB.execute(
                'DELETE FROM contact WHERE id = ?',
                [id]
            )
            if (result.affectedRows === 0) {
                return res.status(500).json({
                    ok: false,
                    msg: 'No se pudo eliminar el contacto'
                })
            } else {

                return res.status(201).json({
                    ok: true,
                    msg: 'Contacto eliminado exitosamente',
                    id: parseInt(id)
                })
            }

        }
    } catch (error) {
        console.log(error)

        if (error.code === 'ER_ROW_IS_REFERENCED_2' || error.code === 'ER_ROW_IS_REFERENCED') {
            return res.status(400).json({
                ok: false,
                msg: 'No se puede eliminar el contacto porque está siendo referenciado por otros registros'
            })
        } else {

            return res.status(500).json({
                ok: false,
                msg: 'Error del servidor al eliminar el contacto'
            })

        }

    }




}

const updateContact = async (req, res = response) => {
    const id = req.params.id
    const { name, center, firstNum, secondNum, position, user, jefe } = req.body;

    try {

        if (!id || isNaN(id)) {
            return res.status(400).json({
                ok: false,
                msg: 'El ID debe ser un número válido'
            })
        }
        const [existingContact] = await promiseDB.execute(
            'SELECT id FROM contact WHERE id = ?',
            [id]
        )

        if (!existingContact) {
            return res.status(404).json({
                ok: false,
                msg: 'No se encontró el contacto con el ID proporcionado'
            })
        } else {
            const sql = `
            UPDATE contact 
            SET name = ?, center = ?, firstNum = ?, secondNum = ?, position = ?, user = ?, jefe = ? 
            WHERE id = ?
           `
            if (!name || !center || !firstNum || !position || !user) {
                return res.status(400).json({
                    ok: false,
                    msg: 'Faltan campos obligatorios: name, center, firstNum, position, user'
                });
            } else {
                const [result] = await promiseDB.execute(sql, [
                    name,
                    center,
                    firstNum,
                    secondNum || null,
                    position,
                    user,
                    jefe || 0,
                    id
                ])

                if (result.affectedRows === 0) {
                    return res.status(500).json({
                        ok: false,
                        msg: 'No se pudo crear el contacto'
                    })
                } else {
                    res.status(201).json({
                        ok: true,
                        msg: 'Contacto creado exitosamente',
                        id: result.insertId,
                        contact: {
                            id: result.insertId,
                            name,
                            center,
                            firstNum,
                            secondNum: secondNum || null,
                            position,
                            user,
                            jefe: jefe || 0
                        }
                    })
                }
            }

        }



    } catch (error) {
        console.log(error)
        return res.status(500).json({
            ok: false,
            msg: 'Error del servidor al actualizar el contacto'
        })
    }



}




module.exports = {
    getContacts,
    newContact,
    deleteContact,
    updateContact

}