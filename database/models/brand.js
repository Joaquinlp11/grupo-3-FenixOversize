module.exports = (sequelize, dataTypes) => {
    let alias = 'marcas';
    let cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            notNULL: true
        } ,
        name: {
            type: dataTypes.STRING,
            notNULL: true
        },
        product_id: {
            type: dataTypes.INTEGER,
            notNULL: true,
            foreignKey: true
        }
    };
    let config = {
        tableName: 'brands',
        timesTamps: false
    };
    
    const brand = sequelize.define(alias, cols, config);

    return brand;

};