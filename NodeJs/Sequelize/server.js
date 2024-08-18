// ETAPE 1 : récupérer la dépendance
const Sequelize = require('sequelize')

// création instance de connexion
const sequelize = new Sequelize('sequelize', 'root', '',{
    host: 'localhost',
    dialect: 'mariadb'
})

//test de connexion
sequelize.authenticate().then(()=>{
    console.log("authentification réussi");
}).catch((err)=>{
    console.log(err);
})

//Etape 2 :Les modèles = tables de votre bdd
const DataTypes = require('sequelize')

const Produit = sequelize.define('Produit',{
    id:{
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false
    },
    nom:{
        type: DataTypes.STRING,
        allowNull: false
    },
    prix:{
        type: DataTypes.FLOAT
    },
    quantite:{
        type: DataTypes.INTEGER
    }
},{
  freezeTableName: true,  
})


// Etape 3 : les fonctions SEQUELIZE
//Produit.sync({alter: true})

const create_produit = async()=>{
    await Produit.create({nom: "carotte"})
}

const update_produit = async()=>{
    await Produit.update({nom: "pomme de terre"},{
        where: {
            id : 1
        }
    })
}

const delete_produit = async()=>{
    await Produit.destroy({
        where :{
            id: 1
        }
    })
}

const show_produit = async()=>{
    let res = await Produit.findAll()
    console.log(JSON.stringify(res, null, 2));
}


// Etape 4: RELATION

const Type = sequelize.define('Type',{
    id:{
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    nom:{
        type: DataTypes.STRING, //agroAlimentaire, etc...
    }
},
{freezeTableName:true})

Produit.belongsToMany(Type, {through: 'ProduitType'})
Type.belongsToMany(Produit, {through: 'ProduitType'})

const reload = async()=>{
    await sequelize.sync({force:true})
}
reload()
