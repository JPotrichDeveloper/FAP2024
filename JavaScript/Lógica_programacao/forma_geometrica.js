class Formageometrica {
    constructor(lados) {
        this.lados =lados;
    }
}

class Circulo extends Formageometrica {
    constructor(lados, raio) {
        super(lados);
        this.raio = raio;
    }

    area() {
        let area = Math.PI * this.raio ** 2;
        console.log(`A area do circulo ${area.toFixed(2)}`)
    }
}

class Retangulo extends Formageometrica {
    constructor(lados, base, altura) {
        super(lados);
        this.base = base;
        this.altura = altura;
    }

    area() {
        let area = this.base * this.altura;
        console.log(`A area do retangulo ${area}`)
    }
}

let circulo = new Circulo(0, 6);
let retangulo = new Retangulo(4, 6, 4);

circulo.area();
retangulo.area();


//lados base altura



//try{
    // instanciar
//}catch(error){
//    console.log(error)   
//}