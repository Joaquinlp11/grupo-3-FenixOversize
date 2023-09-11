const express = require ('express')
const multer = require('multer')
const productsControllers = require('../controllers/productsController')



const router = express.Router();

const storage = multer.diskStorage({
    destination: (req, file, cb) =>{
        cb(null, './public/img/category')
    },
    filename: (req, file, cb)=>{
        cb(null,Date.now() + '-' + file.originalname)
    }
});

const upload = multer({storage})

//@get /products

router.get ('/', productsControllers.getListProducts);

router.get ('/:id/detail' , productsControllers.getDetail );

router.get ('/addproduct', productsControllers.getAddproduct);

router.post('/keep', productsControllers.create);

router.get ('/:id/editProduct', productsControllers.getUpdate);


router.get ('/car' , productsControllers.getCar);

router.put('/', productsControllers.updateProduct);




/* categorys */
router.get ('/hoodies', productsControllers.getHoodies);
router.get ('/remeras', productsControllers.getRemeras);
router.get ('/pantalones', productsControllers.getPantalones);
router.get ('/buzos', productsControllers.getBuzos);
router.get ('/outfits', productsControllers.getOutfits);
router.get ('/sneakers', productsControllers.getSneaker);

module.exports = router;