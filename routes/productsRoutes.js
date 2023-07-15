const express = require ('express')
const productsControllers = require('../controllers/productsControllers')
const router = express.Router();

//@get /products
router.get ( '/detail' , productsControllers.getDetail );
router.get ( '/car' , productsControllers.getCar);



module.exports = router;