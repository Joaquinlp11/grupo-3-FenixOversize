module.exports = (sequelize, DataTypes) => {
    const alias = 'Product';
    const cols = {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            
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
        size: {
            type: DataTypes.INTEGER,
            notNULL: true
        },
        price: {
            type: DataTypes.INTEGER,
            notNULL: true
        },
        id_brand: {
            type: DataTypes.INTEGER,
            notNULL: true,
            references: {
                model: 'brands',
                key: 'id'
            }
        },
        id_category: {
            type: DataTypes.INTEGER,
            notNULL: true,
            references: {
                model: 'categorys',
                key: 'id'
            }

        },

    
    }
    const config = {
        tableName: 'products',
        timestamps: false
    }
    
    const Product = sequelize.define(alias, cols, config);

    Product.associate = (models) =>{
        Product.belongsTo(models.Category, {
            as: 'categoria',
            timestamps: false,
            foreignKey: 'id_category'
        })
        Product.belongsTo(models.Brand, {
            as: 'marca',
            timestamps: false,
            foreignKey: 'id_brand'
        })
        Product.belongsToMany(models.User, {
            as: 'product-user',
            foreignKey: 'id_product',
            through: 'ProductUser',
        })
    }
    
    
    
    
    return Product;
};

