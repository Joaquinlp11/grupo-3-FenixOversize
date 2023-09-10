const path = require("path");
const { Product } = require("../database/models");

const mainControllers = {
  getIndex: async (req, res) => {

    

    try {
      const outfits = await Product.findAll({
        raw: true,
        nest: true,
        include:"categoria",
        include:"marca",
        limit: 4,
        where:{
          id_category: 6,
        }
      })
      const sneakers = await Product.findAll({
        raw: true,
        nest: true,
        include:"categoria",
        include:"marca",
        limit: 4,
        where:{
          id_category: 5,
        }
      })

      res.render("index", { title : 'Fénix', outfits,sneakers});
    } catch (error) {
      res.render("index", { title : 'Fénix', outfits:[],sneakers:[]});
      
    }
  }
};

module.exports = mainControllers;
