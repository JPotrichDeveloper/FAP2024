class Funcionario {
    constructor(nome, departamento) {
        this.nome = nome;
        this.departamento = departamento;
    }

    descricaoCargo() {
        console.log("Descricao");
    }
}

class Gerente extends Funcionario {
    constructor(nome, departamento, nivel) {
        super(nome, departamento);
        this.nivel = nivel;
    }

    descricaoCargo() {
        console.log(`O Gerente ${this.nome} - do Departamento ${this.departamento} - e do Nivel ${this.nivel}`);
    }
}

class Desenvolvedor extends Funcionario {
    constructor(nome, departamento, linguagem) {
        super(nome, departamento);
        this.linguagem = linguagem;
    }

    descricaoCargo() {
        console.log(`O Desenvolvedor ${this.nome} - do Departamento de ${this.departamento} - e da Linguagem ${this.linguagem}`);
    }
}

let gerente = new Gerente("João Elias", "Desenvolvimento", "Backend");
let desenvolvedor = new Desenvolvedor("Gustavo", "Desenvolvimento", "JavaScript");

gerente.descricaoCargo();
desenvolvedor.descricaoCargo();
