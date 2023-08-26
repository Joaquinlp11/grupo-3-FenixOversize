module.exports = (sequelize, dataTypes) => {
    let alias = 'Brand';
    let cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true,
            notNULL: true
        } ,
        name: {
            type: dataTypes.STRING,
            notNULL: true
        },
       
    };
    let config = {
        tableName: 'brands',
        timesTamps: false
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