const express = require ('express')
const productsControllers = require('../controllers/productsController')
const router = express.Router();

//@get /products

router.get ('/', productsControllers.getListProducts);

router.get ('/:id/detail' , productsControllers.getDetail );

router.get ('/addproduct', productsControllers.getAddproduct);

router.post('/keep', productsControllers.create);

router.get ('/car' , productsControllers.getCar);

router.get ('/edit', productsControllers.getEdit);

/* categorys */
router.get ('/hoodies', productsControllers.getHoodies);
router.get ('/remeras', productsControllers.getRemeras);
router.get ('/pantalones', productsControllers.getPantalones);
router.get ('/buzos', productsControllers.getBuzos);
router.get ('/outfits', productsControllers.getOutfits);
router.get ('/sneakers', productsControllers.getSneaker);

module.exports = router;