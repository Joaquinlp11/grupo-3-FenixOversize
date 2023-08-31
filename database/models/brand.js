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
        timestamps: false
    };
    
    const Brand = sequelize.define(alias, cols, config);
    Brand.associate = (models) =>{
        Brand.hasMany(models.Product, {
            as: 'brands',
            timestamps: false,
            foreignKey: 'id_brand'
        })
    }
    return Brand;

};
