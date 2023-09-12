module.exports = (sequelize, DataType) => {
    const alias = 'Product';
    const cols = {
        id: {
            type: DataType.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            
        },
        name: {
            type: DataType.STRING,
            notNULL: true
        },
        description: {
            type: DataType.STRING,
            notNULL: true
        },
        image: {
            type: DataType.STRING,
            notNULL: true
        },
        color: {
            type: DataType.STRING,
            notNULL: true
        },
        size: {
            type: DataType.INTEGER,
            notNULL: true
        },
        price: {
            type: DataType.INTEGER,
            notNULL: true
        },
        id_brand: {
            type: DataType.INTEGER,
            notNULL: true,
            references: {
                model: 'brands',
                key: 'id'
            }
        },
        id_category: {
            type: DataType.INTEGER,
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

