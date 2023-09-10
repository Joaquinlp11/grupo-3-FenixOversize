const path = require ('path')
const {User} = require('../database/models')
const userModel = require('../database/models/User.js')
const bcript = require('bcript')


const usersControllers= {

    getRegister: ( req , res )=>{

        // res.render ( 'register' , { title : 'Registrate'});
        res.render ('register');

    },

    registerUser: (req, res) => {

        const user = {...req.body};

        const newPassword = bcript.hashSync(user.password, 12);

        user.password = newPassword;


        userModel.createOne(user);
        res.send('se registro')
    },



    getLogin: ( req , res )=>{

        res.render('login');
    },


    loginUser: ( req , res )=>{

        const searchedUser = userModel.findByEmail(req.body.email);

        if (!searchedUser){
            return res.redirect('/users/login');
        }    

        const {password : hashedPw} = searchedUser;

        const isCorrect = bcript.compareSync(req.body.password, hashedPw);

            
        if (isCorrect){
            if(!!req.body.remember){
                res.cookie('email', searchedUser.email, {maxAge: 1000*60*60});
            }

            delete searchedUser.password;
            delete searchedUser.id;

            req.session.user = searchedUser;
            res.redirect('/');
        }else{
            return  res.redirect('/users/login');
        }
    },










    getLogin: ( req , res )=>{

        res.render ( 'login' , { title : 'ingresa'});
    },
   
    getUserAcount: ( req , res )=>{

        res.render ( 'userAcount' , { title : 'Mi perfil'});
    },
    getUserList: async ( req , res )=>{

        try {
            const usersList = await User.findAll({
                raw: true,
                nest: true
            });
            res.render ( 'userList' , { title : 'Listado de Usuarios', usersList});
        } catch (error) {
            res.render ( 'userList' , { title : 'Listado de Usuarios', usersList: []});
            
        }

    }
 
}



module.exports= usersControllers;