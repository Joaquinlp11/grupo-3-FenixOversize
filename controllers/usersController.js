const path = require ('path')
const {User} = require('../database/models')

const bcrypt = require('bcrypt');



const usersControllers= {

    getRegister: ( req , res )=>{

         res.render ( 'register' , { title : 'Registrate'});
        

    },

    registerUser: (req, res) => {

        const user = {...req.body};

        const newPassword = bcrypt.hashSync(user.password, 12);

        user.password = newPassword;


        User.create(user);
        res.send('se registro')
    },



    getLogin: ( req , res )=>{

        res.render('login',{title: 'Inicia sesion'});
    },


    loginUser: ( req , res )=>{

        const searchedUser = User.findByEmail(req.body.email);

        if (!searchedUser){
            return res.redirect('/users/login');
        }    

        const {password : hashedPw} = searchedUser;

        const isCorrect = bcrypt.compareSync(req.body.password, hashedPw);

            
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

   
    getUserAcount: async ( req , res )=>{

        try {
            const user = await User.findByPk(req.params.id);
            if (user) {
              res.render("userAcount", { title: "Detalle usuario", user });
            } else {
              res.status(404).send("Producto no encontrado");
            }
          } catch (error) {
            console.log(error);
            res.status(500).send("Error interno del servidor");
          }
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