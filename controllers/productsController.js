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
}

module.exports = productsControllers