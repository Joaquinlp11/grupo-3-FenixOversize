const express = require ('express')



const usersControllers = require('../controllers/usersControllers');

const router = express.Router();

//@get /login
router.get ( '/login' , usersControllers.getLogin );
router.get ( '/register' , usersControllers.getRegister );


module.exports = router;