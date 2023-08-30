module.exports = (sequelize, DataTypes) => {
    let alias = 'Brand';
    let cols = {
        id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            notNULL: true
        } ,
        name: {
            type: DataTypes.STRING,
            notNULL: false
        },
    };
    let config = {
        tableName: 'brands',
        timesTamps: true
    };
    
    const Brand = sequelize.define(alias, cols, config);
    Brand.associate = (models) =>{
        Brand.hasMany(models.Product, {
            as: 'brands',
            timesTamps: false,
            foreignKey: 'id_brand'
        })
    }
    return Brand;

};