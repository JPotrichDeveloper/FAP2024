class Conta {
    constructor(conta, saldo, senha) {        
        this.conta = conta;
        this.saldo = saldo;
        this.senha = senha;
    }

    Saldoconta() {
        console.log("Saldo da conta");
    }
}

class ContaPF extends Conta {
    constructor(conta, saldo, senha,cpf) {
        super(conta, saldo, senha);
        this.cpf = cpf;
    }

    SaldocontaPF() {
        console.log(`A conta ${this.conta} - possui O saldo de ${this.saldo} - cuja senha é ${this.senha} - registrada sob o cpf ${this.cpf}`);
    }
}

class ContaPJ extends Conta {
    constructor(conta, saldo, senha,cnpj) {
        super(conta, saldo, senha);
        this.cnpj = cnpj;
    }

    SaldocontaPJ() {
        console.log(`A conta ${this.conta} - possui O saldo de ${this.saldo} - cuja senha é ${this.senha} - registrada sob o cnpj ${this.cnpj}`);
    }
}

let contapf = new ContaPF(123-5, 100.00, 1234, 11122233300);
let contapj = new ContaPJ(231-3, 200.00, 5432, 22233344498);

contapf.SaldocontaPF()
contapj.SaldocontaPJ();