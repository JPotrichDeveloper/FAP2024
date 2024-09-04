var Carros = /** @class */ (function () {
    function Carros(marca, modelo, ano) {
        this.marca = marca;
        this.modelo = modelo;
        this.ano = ano;
    }
    Carros.prototype.getMarca = function () {
        return this.marca;
    };
    Carros.prototype.setMarca = function (marca) {
        this.marca = marca;
    };
    Carros.prototype.getModelo = function () {
        return this.modelo;
    };
    Carros.prototype.setModelo = function (modelo) {
        this.modelo = modelo;
    };
    Carros.prototype.getAno = function () {
        return this.ano;
    };
    Carros.prototype.setAno = function (ano) {
        this.ano = ano;
    };
    Carros.prototype.ObterDetalhes = function () {
        console.log("A marca do carro \u00E9: ".concat(this.marca, " - O modelo do carro \u00E9: ").concat(this.modelo, " - O ano do carro \u00E9: ").concat(this.ano));
    };
    Carros.prototype.ObterIdade = function (anoAtual) {
        console.log("O ano atual do carro \u00E9: ".concat(anoAtual - this.ano));
    };
    return Carros;
}());
var detalhes = new Carros('Chevrolet', 'tracker', 2024);
