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
      
    };
    let config = {
        tableName: 'categorys',
        timestamps: false
    };
    
    const Category = sequelize.define(alias, cols, config);

    Category.associate = (models) =>{
        Category.hasMany(models.Product, {
            as: 'categoria',
            timestamps: false,
            foreignKey: 'id_category'
        })
    }
    return Category;
};

