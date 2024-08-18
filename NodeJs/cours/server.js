const express = require('express') // la récupération d'express
const app = express() // variable utilisant la librairie express
const mariadb = require('mariadb');
let cors = require('cors')

require('dotenv').config()

const pool = mariadb.createPool({
    host: process.env.DB_HOST,
    database: process.env.DB_DTB,
    user: process.env.DB_USER,
    password:process.env.DB_PWD,
});

app.use(express.json())
app.use(cors())
const celebrites = require('./celebrites.json')
// On définit la route racine "/"

app.get("/celebrites",(req,res) => {
    res.status(200).json(celebrites)
});

app.get("/celebrites/:nom",(req,res) => {
    const nom = req.params.nom
    const LaCelebrite = celebrites.find(celebrites => celebrites.nom === nom)
    res.status(200).json(LaCelebrite)
});

app.post('/celebrites',(req,res)=>{
    celebrites.push(req.body)
    res.status(200).json(celebrites)
})

app.put('/celebrites/:nom',(req,res)=>{
    const name = req.params.nom
    let LaCelebrite = celebrites.find(celebrites => celebrites.nom === name) 
    LaCelebrite.nom = req.body.nom,
    LaCelebrite.prenom = req.body.prenom,
    LaCelebrite.age = req.body.age,
    res.status(200).json(LaCelebrite)
})

app.delete('/celebrites/:nom',(req,res)=>{
    const name = req.params.nom
    let LaCelebrite = celebrites.find(celebrites => celebrites.nom === name) 
    celebrites.splice(celebrites.indexOf(LaCelebrite),1)
    res.status(200).json(celebrites)
})

app.get('/celebritees',async(req,res)=>{
    let conn;
    try{
        console.log("Lancement de la connexion")
        conn = await pool.getConnection();
        console.log("Lancement de la requête")
        const rows = await conn.query('SELECT * FROM infos');
        console.log(rows);
        res.status(200).json(rows)
    }
    catch(err){
        console.log(err);
    }
})

app.listen(8000, () => {
    console.log("Serveur à l'écoute")
})