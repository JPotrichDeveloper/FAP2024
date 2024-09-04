class Funcionarios {
private nome: string;
private salario: number;

constructor(nome: string, salario: number) {
this.nome = nome;
this.salario = salario;
}

public getNome(): string {
return this.nome;
}

public setNome(nome: string): void {
this.nome = nome;
}

public getSalario(): number {
return this.salario;
}

public setSalario(salario: number): void {
this.salario = salario;
}

    obterSalario(): void {
        console.log(`O salário anual do funcionário é: ${this.salario * 12}`);
    }
}

    class gerente extends Funcionarios {
        private bonus: number;

    constructor(nome: string, salario: number, bonus: number) {
        super(nome, salario)    
        this.bonus = bonus;
    }
    }