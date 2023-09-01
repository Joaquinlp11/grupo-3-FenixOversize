const express = require ('express')



const usersControllers = require('../controllers/usersController');

const router = express.Router();

//@get /
router.get ( '/login' , usersControllers.getLogin );
router.get ( '/register' , usersControllers.getRegister );
router.get ( '/userAcount' , usersControllers.getUserAcount);
router.get ( '/userList' , usersControllers.getUserList);


module.exports = router;