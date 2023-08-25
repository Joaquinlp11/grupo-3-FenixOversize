module.exports = (sequelize, DataTypes) => {
    let alias = 'Category';
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
            type: DataTypes.INTEGER,
            notNULL: true,
            foreignKey: true
        }
    };
    let config = {
        tableName: 'category',
        timesTamps: false
    };
    
    const Category = sequelize.define(alias, cols, config);

    Category.associate = (models) =>{
        Category.hasMany(models.Product, {
            as: 'categorys',
            timesTamps: false,
            foreignKey: 'category_id'
        })
    }
    return Category;
};