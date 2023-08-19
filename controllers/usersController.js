const path = require ('path')

const usersControllers= {



    getLogin: ( req , res )=>{

        res.render ( 'login' , { title : 'ingresa'});
    },
    getRegister: ( req , res )=>{

        res.render ( 'register' , { title : 'Registrate'});
    },
 
}



module.exports= usersControllers;