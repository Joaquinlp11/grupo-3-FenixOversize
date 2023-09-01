const path = require ('path')
const {User} = require('../database/models')
const usersControllers= {



    getLogin: ( req , res )=>{

        res.render ( 'login' , { title : 'ingresa'});
    },
    getRegister: ( req , res )=>{

        res.render ( 'register' , { title : 'Registrate'});
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