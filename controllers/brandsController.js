const db = require('../database/models/brand')
const brandsController = {
    list: async (req, res) => {
        try {
          const bra = await Product.findAll({
            raw: true,
            include: "brands",
            nest: true,
          });
}}

module.exports = brandsController;