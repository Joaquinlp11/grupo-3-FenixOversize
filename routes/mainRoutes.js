const express = require ('express')

const mainControllers = require('../controllers/mainController');

const router = express.Router();

//@get /index
router.get ( '/' , mainControllers.getIndex );



module.exports = router;