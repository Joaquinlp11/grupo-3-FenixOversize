const path = require ('path')

const productsControllers= {

    getDetail: (req, res)=>{
        res.render('detail')
    },

    getSelectCategory: (req, res) => {
        res.render('selectCategory')
    },

    getNewProductC: (req, res) => {
        res.render('createProductC')
    },

    getNewProductV: (req, res) => {
        res.render('createProductV')
    }

}

module.exports = productsControllers