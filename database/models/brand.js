module.exports = (sequelize, dataTypes) => {

    const alias = 'Brands';
    const cols ={
        id: {
            autoIncrement: true,
            primaryKey: true,
            type: dataTypes.INTEGER
        },
        name: {
            allowNull: false,
            type: dataTypes.STRING
        }
    };
    const config = {
        timeStamps: true
    }

    const Brand = sequelize.define(alias, cols, config) 

    return Brand
};