class Carros {
    private marca: string;
    private modelo: string;
    private ano: number;

    constructor(marca: string, modelo: string, ano: number) {
        this.marca = marca;
        this.modelo = modelo;
        this.ano = ano;
    }

    public getMarca(): string {
        return this.marca;
    }

    public setMarca(marca: string): void {
        this.marca = marca;
    }

    public getModelo(): string {
        return this.modelo;
    }

    public setModelo(modelo: string): void {
        this.modelo = modelo;
    }

    public getAno(): number {
        return this.ano;
    }
    public setAno(ano: number): void {
        this.ano = ano;
    }

    public ObterDetalhes(): void {
        console.log(`A marca do carro é: ${this.marca} - O modelo do carro é: ${this.modelo} - O ano do carro é: ${this.ano}`);           
        }

    public ObterIdade(anoAtual: number): void {
        console.log(`O ano atual do carro é: ${anoAtual - this.ano}`);
    }
}

let detalhes = new Carros('Chevrolet','tracker',2024)

