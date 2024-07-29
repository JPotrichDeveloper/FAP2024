class Livros {
    constructor(titulo, autor, ano, genero) {
        this.titulo = titulo;
        this.autor = autor;
        this.ano = ano;
        this.genero = genero;
    }

    descrever() {
        console.log(`Titulo do livro: ${this.titulo} - Autor do livro: ${this.autor} - Ano de lançamento do livro: ${this.ano} - Genêro do livro: ${this.genero}`);
    }    

}

let livro = new Livros("O poder está dentro de você", "Henry Thomas Hamblin", "10 junho 2022", "Auto ajuda");

livro.descrever();