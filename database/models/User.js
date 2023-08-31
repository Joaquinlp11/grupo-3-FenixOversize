module.exports = (sequelize, dataTypes) => {

    const alias = 'Users';
    const cols = {
        id: {
            autoIncrement: true,
            primatyKey: true,
            type: dataTypes.INTEGER
        },
        first_name: {
            allowNull: false,
            type: dataTypes.STRING
        },
        last_name: {
            allowNull: false,
            type: dataTypes.STRING        
        },
        email: {
            allowNull: false,
            type: dataTypes.STRING
        },
        password: {
            allowNull: false,
            type: dataTypes.STRING
        },
        tipe: {
            allowNull: false,
            type: dataTypes.STRING
        },
        Image: {
            allowNull: true,
            type: dataTypes.STRING
        }
    };
    const config = {
        timeStamps: false
    };
    
}