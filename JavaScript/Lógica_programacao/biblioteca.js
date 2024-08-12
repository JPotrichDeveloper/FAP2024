class Biblioteca {
    constructor(titulo_livro, autor, ano_lancamento) {
        this.titulo_livro = titulo_livro;
        this.autor = autor;
        this.ano_lancamento = ano_lancamento;
    }
    descricao_livro() {
        console.log(`Título do livro ${this.titulo_livro} - Autor ${this.autor} - Ano de lançamento ${this.ano_lancamento}`);
    }    
}

class BibliotecaPublica extends Biblioteca() {
    constructor(titulo_livro, autor, ano_lancamento, id_publica) {
        super(titulo_livro, autor, ano_lancamento)
        this.id_publica = id_publica;
    }
}

