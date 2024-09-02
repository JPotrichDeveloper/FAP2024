import mysql from "mysql2";
import mysql_config from "./database_config.js";

const conexao = mysql.createConnection(mysql_config);

conexao.connect(error=> {
    if(error) {
        console.log(`ERRO! ${error.stack}`);
    }else {
        console.log("A conexão com o MYSQL foi efetuada com sucesso!");
    }
});

export default conexao;