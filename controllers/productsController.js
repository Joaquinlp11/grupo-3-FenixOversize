const path = require("path");
const Sequelize = require('sequelize');
const { Op } = Sequelize;
const { Product, Brand} = require("../database/models");

const productsControllers = {
  getListProducts: async (req, res) => {
    try {
      const productsList = await Product.findAll({
        raw: true,
        include: "marca",
        nest: true,
        where: {
          id_category: {
            [Sequelize.Op.not]: 5, // Excluir productos con id_category igual a 5
          },
        },
      });
      const sneakersPro = await Product.findAll({
        raw: true,
        include: "marca",
        limit: 8,
        nest: true,
        where:{
          id_category: 5
        }
      });

      res.render("productsList", { title: "Productos", productsList, sneakersPro });
    } catch (error) {
      res.render("productsList", { title: "Productos", productsList: [], sneakersPro: [] });
      console.log(error);
    }
  },
  getDetail: async (req, res) => {
    try {
      const product =  await Product.findByPk(req.params.id, {
        include: "marca",
      });
      if (product) {
         res.render("detail", { title: "Detalle", product });
      } else {
         res.status(404).send("Producto no encontrado");
      }
    } catch (error) {
      console.log(error);
       res.status(500).send("Error interno del servidor");
    }
  },

  getAddproduct: (req, res) => {
    res.render("addProduct", { title: "Agregar Producto" });
  },

  create: (req, res) => {
    Product.create({
      name: req.body.nombre,
      description: req.body.descripcion,
      image: req.body.imagen,
      color: req.body.color,
      size: req.body.talles,
      price: req.body.precio 
    });

    res.redirect('/products');

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
        include: "marca",
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
        include: "marca",
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
        include: "marca",
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
        include: "marca",
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
  getOutfits: async (req, res) => {
    try {
      const productsOutfits = await Product.findAll({
        raw: true,
        include: "categoria",
        include: "marca",
        nest: true,
        
        where: {
          id_category: 6,
        },
      });

      res.render("outfits", { title: "Outfits", productsOutfits });
    } catch {
      res.render("outfits", { title: "Outfits", productsOutfits: [] });
    }
  },
  getSneaker: async (req, res) => {
    try {
      const productsSneakers = await Product.findAll({
        raw: true,
        include: "categoria",
        include: "marca",
        nest: true,
        where: {
          id_category: 5,
        },
      });

      res.render("sneakers", { title: "Sneakers", productsSneakers });
    } catch {
      res.render("sneakers", { title: "Sneakers", productsSneakers: [] });
    }
  },
};

module.exports = productsControllers;
