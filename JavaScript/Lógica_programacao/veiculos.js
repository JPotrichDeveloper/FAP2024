class Veiculo {
    constructor(marca, modelo) {
        this.marca = marca;
        this.modelo = modelo;
               
    }
    descricao() {
        console.log(`A marca do veiculo é: ${this.marca} - o modelo do veiculo é: ${this.modelo}`);        
    }
    
}

class Carro extends Veiculo {
    constructor(marca, modelo, ano) {
        super(marca, modelo)
        this.ano = ano;        
    }

    novaDescricao() {
        console.log(`A marca do veiculo é: ${this.marca} - o modelo do veiculo é: ${this.modelo} - o ano do veiculo é: ${this.ano}`);        
    }
}

class Bicicleta extends Veiculo {
    constructor(marca, modelo, tamanho) {
        super(marca, modelo)
        this.tamanho = tamanho;
    }

    model(){
        console.log(`A marca da bicicleta é: ${this.marca} - o modelo da bicicleta é: ${this.modelo} - o tamanho da bicicleta é: ${this.tamanho}`);        
    }
}

let carro = new Carro("Ford", "KA Titanium", "2019");
let bicicleta = new Bicicleta("KRW", "Mountan bike", "Aro 29");

carro.descricao();
carro.novaDescricao();
bicicleta.model()