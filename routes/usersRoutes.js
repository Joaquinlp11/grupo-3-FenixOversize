const express = require ('express')



const usersControllers = require('../controllers/usersControllers');

const router = express.Router();

//@get /
router.get ( '/login' , usersControllers.getLogin );
router.get ( '/register' , usersControllers.getRegister );
router.get ( '/userAcount' , usersControllers.getUserAcount);


module.exports = router;