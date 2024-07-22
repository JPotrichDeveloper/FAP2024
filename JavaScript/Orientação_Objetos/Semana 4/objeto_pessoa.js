let Pessoa = {
  nome: "João",

  pessoa: function () {
    console.log("O nome da pessoa é: " + this.nome);
  },
};

Pessoa.pessoa();
