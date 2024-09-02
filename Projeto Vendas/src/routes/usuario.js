//Importando as Dependencias
import express from "express";
import conexao from '../database/database.js';

const router = express.Router();

router.post("/cadastro", (req, res)=> {
    const post_data = req.body;
    const nome_usuario = post_data.nome_usuario;
    const email_usuario = post_data.email_usuario;
    const senha_usuario = post_data.senha_usuario;
    const data_criacao = post_data.data_criacao;
    
    
    if(Object.keys(post_data).length === 0) {
        res.send("ERRO! Os Dados estão vazios!");
        return;
    }
    
   
    if(!nome_usuario || !email_usuario || !senha_usuario || !data_criacao) {
        res.send("ERRO! Os Dados estão incompletos!");
        return;
    }
    
    conexao.query("INSERT INTO usuarios (nome_usuario, email_usuario, senha_usuario, data_criacao) VALUES (?, ?, ?, NOW())", [nome_usuario, email_usuario, senha_usuario, data_criacao], (err, rows)=> {
        if(!err) {
            res.send("Os dados foram inseridos com sucesso!");
        }else {
            res.send(`ERROR! ${err.message}`);
        }
    });
});
    

router.get("/buscar", (req, res)=> {
    conexao.query("SELECT * FROM usuarios", (err, rows)=> {
        if(!err) {
            res.send(rows);
        }else {
            res.send(`ERRO! ${err.message}`);
        }
    })
});


router.get("/buscar/:id_usuario", (req, res)=> {
    const id_usuario = req.params.id_usuario;
    conexao.query("SELECT * FROM usuarios WHERE id_usuario = ?", [id_usuario], (err, rows)=> {
        if(!err) {
            if(rows.length > 0) {
                res.send(rows);
            }else {
                res.send("ERRO! O usuário não existe!");
            }
        }else {
            res.send(`ERRO! ${err.message}`);
        }
    });
});


router.delete("/deletar/:id_usuario", (req, res)=> {
    const id_usuario = req.params.id_usuario;
    conexao.query("DELETE FROM usuarios WHERE id_usuario = ?", [id_usuario], (err, rows)=> {
        if(!err) {
            if(rows.affectedRows > 0) {
                res.send("Usuário deletado com sucesso!");                
            }else {
                res.send("ERRO! O usuário não existe, para ser deletado!");
            }            
        }else {
            res.send(`ERRO! ${err.message}`);
        }
    })
});


router.put("/atualizar/:id_usuario", (req, res)=> {
    const id_usuario = req.params.id_usuario;
    const update_data = req.body;
    const nome_usuario = update_data.nome_usuario;
    const email_usuario = update_data.email_usuario;
    const senha_usuario = update_data.senha_usuario;
    const data_criacao = update_data.data_criacao;

    if(Object.keys(update_data).length === 0) {
        res.json("ERRO! Dados vazios!");
        return;
    }

    let fields = [];
    let values = [];

    if(nome_usuario) {
        fields.push("nome_usuario = ?");
        values.push(nome_usuario);
    }

    if(email_usuario) {
        fields.push("email_usuario = ?");
        values.push(email_usuario);
    }

    if(senha_usuario) {
        fields.push("senha_usuario = ?");
        values.push(senha_usuario);
    }

    if(data_criacao) {
        fields.push("data_criacao = ?");
        values.push(data_criacao);
    }

    values.push(id_usuario);
    const query = `update usuarios set ${fields.join(',')} where id_usuario = ?`;

    conexao.query(query, values,(err, rows)=> {
        if(!err) {
            if(rows.affectedRows > 0) {
                res.json("Usuário atualizado com sucesso!");
            }else {
                res.json("O ID do usuário é inválido! Não consta no banco de dados!");
            }
        }else {
            res.json(`ERRO! ${err.message}`);
        }
    });
});

export default router;