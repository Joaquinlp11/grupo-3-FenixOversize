const path = require('path');
const { Brand } = require("../database/models");

const brandsController = {
    list: async (req, res) => {
        try {
          const brandList = await Brand.findAll({
            raw: true,
            nest: true,
        });

        res.render("brandsList", { title: "Marcas", brandList });
    } catch (error) {
        res.render("brandsList", { title: "Marcas", brandList: [] });
        console.log(error);
    }
}
}

module.exports = brandsController;