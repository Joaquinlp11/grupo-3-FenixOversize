module.exports = (sequelize, DataTypes) => {
    let alias = 'categotys';
    let cols = {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            notNULL: true
        },
        name: {
            type: DataTypes.STRING,
            notNULL: true
        },
        product_id: {
            type: DataTpes.INTEGER,
            notNULL: true,
            foreignKey: true
        }
    };
    let config = {
        tableName: 'category',
        timesTamps: false
    };
    
    const brands = sequelize.define(alias, cols, config);

};