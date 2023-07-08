const path = require ('path')

const productsControllers= {

    getDetail: (req, res)=>{
        res.render('detail')
    }
}

module.exports = productsControllers