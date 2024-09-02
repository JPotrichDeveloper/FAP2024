//Importando Dependencias
import express from "express";
import morgan from "morgan";
import cors from "cors";

const app = express();

const API_AVAILABLE = true;

//Checando se a api está disponível
app.use((req,res,next)=>{
    if(API_AVAILABLE){
        next();
    }else{
        res.send('A API está em manutenção!');
    }
});

//Middlewares globais
app.use(cors());
app.use(morgan("Metodo: :method | URL: :url | Status: :status"));
app.use(express.json());
app.use(express.urlencoded ({extended:true}));

//Exportação das rotas;
import usuario from './src/routes/usuario.js';

//Rotas 
app.use('/usuarios',usuario);
// app.use('/produtos');
// app.use('/pedidos');
// app.use('/clientes');

//Caso o usuário digite uma rota inexistente!
app.use((req,res)=>{
    res.send('Rota não encontrada!');
})

//Ouvidor do servidor (porta );
app.listen(3000,()=>{
    console.log('O Servidor esta rodando em http://localhost:3000/');
});