const express = require ('express')
const usersControllers = require('../controllers/usersController');

const router = express.Router();

//@GET-   /user/register
router.get ( '/register' , usersControllers.getRegister );

//@POST-   /user
router.post ( '/' , usersControllers.registerUser );



//@POST-   /user/login
router.post ( '/login' , usersControllers.loginUser );


router.get ( '/login' , usersControllers.getLogin );
router.get ( '/register' , usersControllers.getRegister );
router.get ( '/:id/userAcount' , usersControllers.getUserAcount);
router.get ( '/userList' , usersControllers.getUserList);
module.exports = router;


