const express = require ('express')
const productsControllers = require('../controllers/productsControllers')
const router = express.Router();

//@get /l
router.get ('/detail', productsControllers.getDetail);

router.get ('/newproductc', productsControllers.getNewProductC);

router.get ('/selectcategory', productsControllers.getSelectCategory);

router.get ('/newproductv', productsControllers.getNewProductV);

module.exports = router;