class ContaBancaria {
    constructor(numeroConta, senha, saldoInicial) {
        this.numeroConta = numeroConta;
        this.senha = senha;
        this.saldoInicial = saldoInicial;
    }    
}   

class contaPF extends ContaBancaria {
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
    
        consultar_saldo(senha) {            

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

    function menu(conta) {
        let opcao = prompt (

        "========== MENU DE OPÇÕES ==========\n" +
        "1. Consultar Saldo\n" +
        "2. Depositar\n" +
        "3. Sacar\n" +
        "4. Transferir\n" +
        "5. Sair\n" +
        "Escolha uma opção: "

        );       

    let opcaoEscolhida = prompt("Informe o número da opção desejada!");

    if (opcaoEscolhida === 1) {
        let numeroConta = prompt("Informe o número da conta:");
        let senha = prompt("Informe a senha:");
    }


let conta1 = new contaPF("12345-6", "12345", 1000.00);
let conta2 = new contaPF("65432-1", "54321", 500.00);

//let Conta = prompt("Informe o número da opção desejada!");

    }



