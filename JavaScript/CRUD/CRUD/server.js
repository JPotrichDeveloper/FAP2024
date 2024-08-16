//Importando as dependencias necessarias

const express = require('express');
const morgan = require('morgan');
const mysql = require('mysql2');
const cors = require('cors');
const app = express();

// Funcoes e configuração do mysql

const mysql_config = require('./mysql_config.js');

//Disponibilidade da Api

const disponibilidade = true;

app.use((req,res,next)=>{
    if(disponibilidade){
        next();
    }else{
        res.send('Api indisponível');
    }
});

//Utilizando middlewares globais

app.use(morgan("Metodo: :method |  URL: :url | Status: :status "));
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({extended:true}));

//Criando a conexão com o banco de dados MYSQL

const connection = mysql.createConnection(mysql_config);

connection.connect(error =>{
    
    if(error){
        console.log(`Error!! : ${error.stack}`);
    }else{
        console.log('Conexão com o MYSQL realizada com sucesso!');
    }
    
});

//Rotas

app.get('/',(req,res)=>{
   res.send('Olá mundo');     
})

//metodo post para inserir os dados no banco

app.post("/usuario/cadastro",(req,res)=>{
    const corpo_requisicao = req.body;
    const username = corpo_requisicao.username;
    const password = corpo_requisicao.password;

//Checando se o corpo da requisição está sendo enviado vazio.

    if (Object.keys(corpo_requisicao).length === 0){
        res.json("Erro! DADOS VAZIOS!!!");
        return;
    }

//Checando se algum dado está sendo enviado vazio.

    if(!username || !password){
        res.json('DADOS INCOMPLETOS');
        return;
    }

    connection.query('INSERT INTO Usuarios (username,password) VALUES (?,?)',[username,password],(err,rows)=>{
        if(!err){
            res.send('Dados inseridos com sucesso!');
        }else{
            res.send(`Erro! ${err.message}`);
        }
    });

});

//Lendo todos os dados dos usuarios cadastrados no banco

app.get("/usuario/busca", (req,res)=>{
    connection.query("select * from usuarios", (err,rows)=>{
        if(!err){
            res.json(rows);
        }else{
            res.send(`Erro!! :${err.message}`);
        }
    });
});

//Buscando usuarios no banco atraves do id_usuario

app.get("/usuario/busca/:id_usuario", (req,res)=>{
    const id_usuario = req.params.id_usuario;
    connection.query("select * from usuarios where id_usuario = ?", [id_usuario], (err,rows)=>{
        if(!err){
            if(rows.length>0){
                res.json(rows)
            }else{
                res.status(404).json("ERRO! id do usuario invalido!");
            }
        }else{
            res.json(`ERROR: ${err.message}`);
        }
    });
});

//Atualizando os dados dos usuarios no banco

app.put("/usuario/atualizar/:id_usuario", (req,res)=> {
    const id_usuario = req.params.id_usuario;
    const update_data = req.body;
    const username = update_data.username;
    const password = update_data.password;

    if(Object.keys(update_data).length === 0)
    {
        res.json("Erro! Dados vazios!");
        return;
    }

    let fields = [];
    let values = [];

    if(username) {
        fields.push("username = ?");
        values.push(username);
    }

    if(password) {
        fields.push("password = ?");
        values.push(password);
    }

    values.push(id_usuario);
    const query = `update usuarios set ${fields.join(',')} where id_usuario = ?`;

    connection.query(query, values,(err,rows)=> {
        if(!err) {
            if(rows.affectedRows > 0) {
                res.json("Usuário atualizado com sucesso!");
            }else {
                res.json("O ID do usuário é inválido! Não consta no banco de dados!");
            }
        }else {
            res.json(`Erro! ${err.message}`);
        }
    });
});

//////////////////////////////////////////////////////////


//Deletando os dados dos usuarios no banco

app.delete("/usuario/deletar/:id_usuario", (req,res)=> {
    const id_usuario = req.params.id_usuario;
    
    const query = "delete from usuarios where id_usuario = ?";

    connection.query(query, [id_usuario], (err,result)=> {
        if(err) {
            res.status(500).json({Erro: `Erro ao deletar o usuario! ${err.message}`});
            return;
        }

            if(result.affectedRows > 0) {
                res.status(200).json({message: `Usuário deletado com sucesso!`});
            }else {
                res.status(404).json({message: `O ID do usuário é inválido! Não consta no banco de dados!`});
            }        
    });
});








//Conexao com o banco de dados

app.listen(3000,()=>{
    console.log('Servidor iniciado na porta 3000');
})
