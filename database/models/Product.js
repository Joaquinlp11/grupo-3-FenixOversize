module.exports = (sequelize, DataTypes) => {
    let alias = 'Product';
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
        description: {
            type: DataTypes.STRING,
            notNULL: true
        },
        image: {
            type: DataTypes.STRING,
            notNULL: true
        },
        color: {
            type: DataTypes.STRING,
            notNULL: true
        },
        sizes: {
            type: DataTypes.INTEGER,
            notNULL: true
        },
        price: {
            type: DataTypes.INTEGER,
            notNULL: true
        },
        category_id: {
            type: DataTypes.INTEGER,
            notNULL: true,
            references: {
                model: 'category',
                key: 'id'
            }

        }
    }
    let config = {
        tableName: 'products',
        timesTamps: false
    };
    
    const Product = sequelize.define(alias, cols, config);

    Product.associate = (models) =>{
        Product.belongsTo(models.Category, {
            as: 'category',
            timesTamps: false,
            foreignKey: 'category_id'
        })
    }
    return Product;
};