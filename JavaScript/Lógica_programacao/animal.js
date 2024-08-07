class Animal {
    constructor(nome) {
        this.nome = nome;
    }
    fazerSom() {
        console.log("Som do Animal");
    }
}

class Passaro extends Animal {
    constructor(nome, especie) {
        super(nome);
        this.especie = especie;        
    }

    fazerSom() {
        console.log(`O Passaro ${this.nome} - ${this.especie} Canta`);
    }

}

class Peixe extends Animal {
    constructor(nome, especie) {
        super(nome);
        this.especie = especie;        
    }

    fazerSom() {
        console.log(`O Peixe ${this.nome} - Do Pacifico ${this.especie} Faz Glub Glub`)
    }
}

let passaro = new Passaro("Canario", "Belga");
let peixe = new Peixe("Marlin Azul", "do Pacifico");

passaro.fazerSom();
peixe.fazerSom();


