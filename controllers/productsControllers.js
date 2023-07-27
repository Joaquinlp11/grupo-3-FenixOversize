const path = require ('path')

const productsControllers= {

    getDetail: (req, res)=>{
        res.render('detail')
    },

    getSelectCategory: (req, res) => {
        res.render('selectCategory')
    },

    getAddSneakers: (req, res) => {
        res.render('addSneakers')
    },

    getAddClothes: (req, res) => {
        res.render('addClothes')
    }

}

module.exports = productsControllers