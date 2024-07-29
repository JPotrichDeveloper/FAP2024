class ContaBancaria {
    constructor(titular, saldo, numeroConta) {
        this.titular = titular;
        this.saldo = saldo;
        this.numeroConta = numeroConta;
    }

    depositar(novoValor) {
        return this.titular+=novoValor; 
    }

    sacar(novoValor){
        return this.titular-=novoValor; 
    }

    extrato(valorAtual) {
        return this.titular = valorAtual;

    }

    deposito() {
        console.log(`Seu saldo atual é R$ ${this.saldo}`);
    }
    
}