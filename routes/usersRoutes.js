const express = require ('express')
const usersControllers = require('../controllers/usersController');

const router = express.Router();

//@GET-   /user/register
router.get ( '/register' , usersControllers.getRegister );

//@POST-   /user
router.post ( '/' , usersControllers.registerUser );

//@GET-   /user/login
router.get ( '/login' , usersControllers.getLogin );

//@POST-   /user/login
router.post ( '/login' , usersControllers.loginUser );

module.exports = router;












router.get ( '/login' , usersControllers.getLogin );
router.get ( '/register' , usersControllers.getRegister );
router.get ( '/userAcount' , usersControllers.getUserAcount);
router.get ( '/userList' , usersControllers.getUserList);


