const path = require("path");
const { Product } = require("../database/models");

const productsControllers = {
  getListProducts: async (req, res) => {
    try {
      const products = await Product.findAll({
        raw: true,
        include: "categoria",

        nest: true,
      });

      res.render("productsList", { title: "Productos", products });
    } catch (error) {
      res.render("productsList", { title: "Productos", products: [] });
      console.log(error);
    }
  },
  getDetail: (req, res) => {
    res.render("detail", { title: "Detalle" });
  },

  getSelectCategory: (req, res) => {
    res.render("selectCategory", { title: "Selecion de Categoria" });
  },

  getAddSneakers: (req, res) => {
    res.render("addSneakers", { title: "Agregar Calzado" });
  },

  getAddClothes: (req, res) => {
    res.render("addClothes", { title: "Agregar Vestimenta" });
  },

  getEdit: (req, res) => {
    res.render("editProduct", { title: "Editar Producto" });
  },
  getCar: (req, res) => {
    res.render("carrito", { title: "Carrito" });
  },

  /* categorys */
  getHoodies: async (req, res) => {
    try {
      const productsHoodies = await Product.findAll({
        raw: true,
        include: "categoria",
        nest: true,
        where: {
          id_category: 3,
        },
      });

      res.render("hoodies", { title: "Hoodies", productsHoodies });
    } catch {
      res.render("hoodies", { title: "Hoodies", productsHoodies: [] });
    }
  },
  getRemeras: async (req, res) => {
    try {
      const productsRemeras = await Product.findAll({
        raw: true,
        include: "categoria",
        nest: true,
        where: {
          id_category: 4,
        },
      });

      res.render("remeras", { title: "Remeras", productsRemeras });
    } catch {
      res.render("remeras", { title: "Remeras", productsRemeras: [] });
    }
  },
  getPantalones: async (req, res) => {
    try {
      const productsPantalones = await Product.findAll({
        raw: true,
        include: "categoria",
        nest: true,
        where: {
          id_category: 2,
        },
      });

      res.render("pantalones", { title: "Pantalones", productsPantalones });
    } catch (error) {
      res.render("pantalones", { title: "Pantalones", productsPantalones: [] });
    }
  },
  getBuzos: async (req, res) => {
    try {
      const productsBuzos = await Product.findAll({
        raw: true,
        include: "categoria",
        nest: true,
        where: {
          id_category: 1,
        },
      });

      res.render("buzos", { title: "Buzos", productsBuzos });
    } catch (error) {
      res.render("buzos", { title: "Buzos", productsBuzos: [] });
      console.log(error);
    }
  },
  getOutfits: async(req, res) => {
    try{
        const productsOutfits = await Product.findAll({
            raw: true,
            include: 'categoria',
            nest: true,
            where:{
                id_category: 6
            }
        })

        
        
        res.render("outfits", { title: "Outfits",productsOutfits });
    }catch{
        res.render("outfits", { title: "Outfits",productsOutfits:[] });

    }

  },
  getSneaker: async(req, res) => {
    try{
        const productsSneakers = await Product.findAll({
            raw: true,
            include: 'categoria',
            nest: true,
            where:{
                id_category: 5
            }
        })

        
        
        res.render("sneakers", { title: "Sneakers",productsSneakers });
    }catch{
        res.render("sneakes", { title: "Sneakers",productsSneakers:[] });

    }

  },
};

module.exports = productsControllers;
