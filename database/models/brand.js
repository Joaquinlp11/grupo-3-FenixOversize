module.exports = (sequelize, DataTypes) => {
    let alias = 'brands';
    let cols = {
        id: {
            tipe: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            notNULL: true
        } ,
        name: {
            tipe: DataTypes.STRING,
            notNULL: true
        },
        product_id: {
            tipe: DataTpes.INTEGER,
            notNULL: true,
            foreignKey: true
        }
    };
    let config = {
        tableName: 'brands',
        timesTamps: false
    };
    
    const brands = sequelize.define(alias, cols, config);

};