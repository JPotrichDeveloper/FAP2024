class Documento {
    constructor(titulo, autor) {
        this.titulo = titulo;
        this.autor = autor;
    }

    exibirDetalhes() {
        console.log(`O titulo é: ${this.titulo} - O autor é: ${this.autor}`)
    }
}

class Relatorio extends Documento {
    constructor(titulo, autor, data) {
        super(titulo, autor);
        this.data = data;
    }

    exibirDetalhes() {
        console.log(`O titulo é: ${this.titulo} - O autor é: ${this.autor} - a data é: ${this.data}`);
    }

}

class Artigo extends Documento {
    constructor(titulo, autor, revista) {
        super(titulo, autor);
        this.revista = revista;
    }

    exibirDetalhes() {
        console.log(`O titulo é: ${this.titulo} - O autor é: ${this.autor} - a revista é: ${this.revista}`);
    }
}

let relatorio = new Documento("Relatorio Anual", "João Elias", "15/09/2021");
let artigo = new Documento("Artigo Jornalistico", "Gustavo", "28/07/2018");

relatorio.exibirDetalhes();
artigo.exibirDetalhes();