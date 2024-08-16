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

class BibliotecaPublica extends Biblioteca {
    constructor(titulo_livro, autor, ano_lancamento, id_publica) {
        super(titulo_livro, autor, ano_lancamento)
        this.id_publica = id_publica;        
    }

    descricao_livro() {
        console.log(`O Título do livro é: ${this.titulo_livro} - O Autor é: ${this.autor} - O Ano de lançamento é: ${this.ano_lancamento}`);    
    }
}

class BibliotecaUniversidade extends Biblioteca {
    constructor(titulo_livro, autor, ano_lancamento, id_universidade) {
        super(titulo_livro, autor, ano_lancamento)
        this.id_universidade = id_universidade;        
    }

    descricao_livro() {
        console.log(`O Título do livro é: ${this.titulo_livro} - O Autor é: ${this.autor} - O Ano de lançamento é: ${this.ano_lancamento}`);    
    }
}

let livro1 = new Biblioteca("As 48 leis do poder", "Robert Greene", "15/09/2021");
let livro2 = new Biblioteca("O Despertar da Consciência", "Neville GoddardNeville Goddard", "28/07/2018")

livro1.descricao_livro();
livro2.descricao_livro();