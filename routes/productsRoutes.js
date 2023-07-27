const express = require ('express')
const productsControllers = require('../controllers/productsControllers')
const router = express.Router();

//@get /l
router.get ('/detail', productsControllers.getDetail);

router.get ('/addsneakers', productsControllers.getAddSneakers);

router.get ('/selectcategory', productsControllers.getSelectCategory);

router.get ('/addclothes', productsControllers.getAddClothes);

module.exports = router;