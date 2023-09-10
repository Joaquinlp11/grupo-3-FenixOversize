const { json } = require("sequelize");
const { Json } = require("sequelize/types/lib/utils");

const fs = require('fs')
const path = require('path')
const uuid = require('uuid')




const model = {
    route: '/data/users.json',

    findAll: function () {
        const usersJSON = fs.readFileSync(path.join(__dirname, this.route), 'utf-8');

        const users = JSONparse(usersJSON);

        return users;
    },

    findByEmail: function (email) {
        const users = this.findAll();

        let searched = users.find(user => user.email === email);

        if (!searched) {
            searched == null;
        }

        return searched;
    },


    updateById: function(id, newData){

        let users = this.findAll();

        const indice = users.findIndex(productoActual => productoActual.id === id);

        users[indice].title = newData.title;
        users[indice].price = newData.price;

        const usersJSON = JSON.stringify(users);

        fs.writeFileSync(path.join(__dirname, this.route), usersJSON);

        return users;
    },

    createOne: function(newUsers) {
        let users = this.findAll();

        newUser.id = uuid.v4();
        

        users.push(newUsers);

        const usersJSON = JSON.stringify(users);

        fs.writeFileSync(path.join(__dirname, this.route), usersJSON);

}
}

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

    User.associate = (models) => {
        User.belongsToMany(models.Product, {
            as: 'product-user',
            foreignKey: 'id_user',
            through: 'ProductUser',
        })
    }

    return User;
}