class Pessoa {
    constructor(nome, idade, sexo) {
        this.nome = nome;
        this.idade = idade;
        this.sexo = sexo;
    }
}

class Estudante extends Pessoa{
    constructor(nome, idade, sexo, curso, periodo) {
        super(nome, idade, sexo);
        this.curso = curso;
        this.periodo = periodo;
    }

    descricaoEstudante() {
        console.log(`O nome do estudante é: ${this.nome} - a idade é: ${this.idade} - O sexo é: ${this.sexo} - O curso que efetua é: ${this.curso} - O periodo do curso é: ${this.periodo}`);
    }
}

class Professor extends Pessoa {
    constructor(nome, idade, sexo, materia, horario) {
        super(nome, idade, sexo);
        this.materia = materia;
        this.horario = horario;
    }

    descricaoProfessor() {
        console.log(`O nome do professor é: ${this.nome} - a idade é: ${this.idade} - O sexo é: ${this.sexo} - A materia do curso mestrada é: ${this.materia} - O horario do curso é: ${this.horario}`);
    }
}

let estudante = new Estudante("Joao Elias", "43", "Masculino", "Backend", "Noturno");
let professor = new Professor("Thaise", "39", "Feminino", "Backend", "Noturno")

estudante.descricaoEstudante();
professor.descricaoProfessor();


