const express = require ('express')
const productsControllers = require('../controllers/productsControllers')
const router = express.Router();

//@get /products

router.get ('/', productsControllers.getListProducts);

router.get ('/detail', productsControllers.getDetail);

router.get ('/addsneakers', productsControllers.getAddSneakers);

router.get ('/selectcategory', productsControllers.getSelectCategory);
//@get /products
router.get ( '/detail' , productsControllers.getDetail );
router.get ( '/car' , productsControllers.getCar);

router.get ('/addclothes', productsControllers.getAddClothes);

router.get ('/edit', productsControllers.getEdit);

module.exports = router;