const express = require ('express')

const brandsController = require('../controllers/brandsController')

const router = express.Router();

router.get ('/brands', brandsController.list);

module.exports = router;