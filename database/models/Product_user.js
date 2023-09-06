module.exports = (sequelize, dataTypes) => {
    let alias = 'ProductUser';
    let cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            allowNull: false
        },
        id_product: {
            type: dataTypes.INTEGER,
            allowNull: false
        },
        id_user: {
            type: dataTypes.INTEGER,
            allowNull: false
        }
    };
    let config = {
        tableName: 'products_users',
        timesTamps: false
    };
    
    const ProductUser = sequelize.define(alias, cols, config);
    ProductUser.associate = (models)

    return Brand;

};