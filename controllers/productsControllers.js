const path = require ('path')

const productsControllers= {

    getDetail: (req, res)=>{
        res.render('detail')
    },
    getCar: (req, res)=>{
        res.render('carrito')
    }
}

module.exports = productsControllers