module.exports = (sequelize, dataTypes) => {

    const alias = 'User';
    const cols = {
        id: {
            type: dataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
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
        tipo: {
            allowNull: false,
            type: dataTypes.STRING
        },
        image: {
            allowNull: true,
            type: dataTypes.STRING
        }
    };
    const config = {
        tableName: 'users',
        timestamps: false
    };
    const User = sequelize.define(alias, cols, config);
    User.associate = models => {
        User.belongsToMany(models.Product, {
            as:'product',
            through: 'products_users',
            foreignKey: 'id_user',
            otherKey: 'id_product',
            timestamps: false
        })
    }

    return User;
}