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
            as: 'marca',
            timestamps: false,
            foreignKey: 'id_brand'
        })
    }
    return Brand;

};
