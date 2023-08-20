const db = require('../database/models/')
const brandsController = {
    list: (req, res) => {
        db.brands.findAll()
            .then((brands) => {
                res.render('brandsList', {brands:brands})
            })
    }
};

module.exports = brandsController;