const path = require ('path');

const productsControllers= {

    getListProducts: (req, res)=>{
        res.render('productsList', { title : 'Productos'});
    },
    getDetail: (req, res)=>{
        res.render('detail', { title : 'Detalle'});
    },

    getSelectCategory: (req, res) => {
        res.render('selectCategory', { title : 'Selecion de Categoria'});
    },

    getAddSneakers: (req, res) => {
        res.render('addSneakers', { title : 'Agregar Calzado'});
    },

    getAddClothes: (req, res) => {
        res.render('addClothes', { title : 'Agregar Vestimenta'});
    },

    getEdit: (req, res) => {
        res.render('editProduct', { title : 'Editar Producto'});
    },
    getCar: (req, res)=>{
        res.render('carrito', { title : 'Carrito'})
    },

    /* categorys */
    getHoodies: (req, res)=>{
        res.render('hoodies', { title : 'Hoodies'})
    },
    getRemeras: (req, res)=>{
        res.render('remeras', { title : 'Remeras'})
    },
    getPantalones: (req, res)=>{
        res.render('pantalones', { title : 'Pantalones'})
    },
    getBuzos: (req, res)=>{
        res.render('buzos', { title : 'Buzos'})
    },
    getOutfits: (req, res)=>{
        res.render('outfits', { title : 'Outfits'})
    },
    
}

module.exports = productsControllers