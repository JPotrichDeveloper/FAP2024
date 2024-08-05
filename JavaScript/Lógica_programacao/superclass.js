class Animal {
    constructor(nome) {
        this.nome = nome;
    }

    fazerSom() {
        console.log(`${this.nome} faz um som.`);
    }

}

    class Cachorro extends Animal {
        constructor(nome, raca) {
            super(nome);
            this.raca = raca;
        }
    
    latir() {
        console.log(`${this.nome} late`);
    }
}

    const cachorro = new Cachorro("Rex, Labrador");
    cachorro.fazerSom();
    cachorro.latir();
