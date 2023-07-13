const express = require ('express')
const productsControllers = require('../controllers/productsControllers')
const router = express.Router();

//@get /l
router.get ( '/detail' , productsControllers.getDetail );
router.get ( '/')



module.exports = router;