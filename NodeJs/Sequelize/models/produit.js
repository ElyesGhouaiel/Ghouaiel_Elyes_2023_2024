const sequelize = require('./server.js');
const { DataTypes } = require ('sequelize');

const produit = sequelize.define('produit',{
    id: {
        type: DataTypes.INTEGER,
        primarykey:true,
        autoIncrement:true,
        allowNull:false
    },
    nom: {
        type:DataTypes.STRING,
        allowNull:false
    },
    quantité:{
        type: DataTypes.INTEGER,
        allowNull:false
    },
    prix:{
        type: DataTypes.INTEGER,
        allowNull:false
    }
});

module.exports = produit;