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
            allowNull: false,
            references: {
                model: 'products',
                key: 'id'
            }
        },
        id_user: {
            type: dataTypes.INTEGER,
            allowNull: false,
            references: {
                model: 'users',
                key: 'id'
            }
        }
    };
    let config = {
        tableName: 'products_users',
        timesTamps: false
    };
    
    const ProductUser = sequelize.define(alias, cols, config);

    return ProductUser;

};