const {Router} = require('express')
const { getContacts, newContact, deleteContact, updateContact } = require('../controller/contacts')
const router = Router()

router.get('/',getContacts)

router.post('/new',newContact)

router.delete('/:id',deleteContact)

router.put('/:id',updateContact)



module.exports = router