const express = require ('express')



const mainControllers = require('../controllers/mainControllers');

const router = express.Router();

//@get /login
router.get ( '/' , mainControllers.getIndex );



module.exports = router;