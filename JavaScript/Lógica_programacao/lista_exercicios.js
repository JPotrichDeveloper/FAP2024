class Pessoa {

  constructor(nome, idade, cidade) {
    this.nome = nome;
    this.idade = idade;
    this.cidade = cidade;
    
    
  }
  aniversario() {
    return this.idade = this.idade + 1;
  }

  mudarCidade(novo) {
    return this.cidade = novo;
  }

  saudar() {
    //console.log("Boa noite " + this.nome + ", seja Bem-vindo (a) - Sua idade atual é " + this.idade + "anos" + " - Sua cidade atual é " + this.cidade);
    console.log(`Boa noite ${this.nome}, seja bem-vindo (a) - Sua idade atual é ${this.idade} anos - Sua cidade cidade atual é ${this.cidade}`);
  }
}
       
  let usuario = new Pessoa("Joao Elias", 32, "Camaragibe");

    usuario.aniversario();
    usuario.mudarCidade("Paudalho");  
    usuario.saudar();