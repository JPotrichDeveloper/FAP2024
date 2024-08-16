class ContaBancaria {
    constructor(numeroConta, senha, saldoInicial) {
        this.numeroConta = numeroConta;
        this.senha = senha;
        this.saldoInicial = saldoInicial;
    }
}
class contaPF extends ContaBancaria() {
        constructor(numeroConta, senha, saldoInicial, cpf_cliente) {
            super(numeroConta, senha, saldoInicial);
            this.cpf_cliente = cpf_cliente;
        }

        verificar_senha(senha) {
            return this.senha === senha;
        }
    
        verificar_conta(numeroConta) {
            return this.numeroConta === numeroConta;
        }
    
        consultar_saldo(numeroConta, senha) {
            let Conta = prompt("Informe o número da conta.")

            if(this.verificar_senha(senha)) {            
                return `Saldo atual: R$ ${this.saldoInicial.toFixed(2)}`;
            }else {
                return "Senha incorreta";
            }
        }
    
        depositar(valor, senha) {
            if(this.verificar_senha(senha)) {
                this.saldo += valor;
                return `Deposito de R$ ${valor.toFixed(2)} foi realizado com sucesso!!`
                }else {
                return "Senha incorreta";
                }
            }
            
        sacar(valor, senha){
            if(this.verificar_senha(senha)) {
                if (valor > this.saldo) {
                    return "Saldo insuficiente";
                }else {
                    this.saldo -= valor;
                    return `Saque de R$ ${valor.toFixed(2)} foi realizado com sucesso!!`
                }
            }else {
                return "Senha incorreta";
            }
        }
        
        transferir(contaDestino, valor, senha) {
            if(this.verificar_senha(senha)) {
                if(valor > this.saldo) {
                    return "Saldo insuficiente";
                }else {
                    this.saldo -= valor;
                    contaDestino.saldo += valor;
                    return `Transferência de R$ ${valor.toFixed(2)} para a conta ${contaDestino.numeroConta} foi realizado com sucesso!!}`;
                }
            }else {
                return "Senha incorreta";
            }
    
        }

    }

let conta1 = new ContaBancaria("12345-6", "12345", 1000.00);
let conta2 = new ContaBancaria("65432-1", "54321", 500.00);

console.log(conta1.consultar_saldo("12345")); // Saldo atual: R$ 1000.00
console.log(conta1.sacar(200, "12345")); // Saldo atual: R$ 1000.00
console.log(conta1.consultar_saldo("12345")); // Saldo atual: R$ 1000.00
console.log(conta1.transferir(300, "12345")); // Saldo atual: R$ 1000.00
console.log(conta1.consultar_saldo("12345")); // Saldo atual: R$ 1000.00

console.log(conta2.consultar_saldo("12345")); // Saldo atual: R$ 1000.00
console.log(conta2.sacar(200, "12345")); // Saldo atual: R$ 1000.00
console.log(conta2.consultar_saldo("12345")); // Saldo atual: R$ 1000.00
console.log(conta2.transferir(300, "12345")); // Saldo atual: R$ 1000.00
console.log(conta2.consultar_saldo("12345")); // Saldo atual: R$ 1000.00


