import express from "express";

const app = express();
const port = 3000;

app.get("/", (req,res) => {
    res.send("Olá, Mundo!");
});

app.get("/sobre", (req, res) => {
    res.send("Informações a respeito da empresa")
})

app.listen(3000,()=>{
    console.log(`Aplicação rodando na porta ${port}`);
})