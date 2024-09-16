// src/index.ts

// Função para saudar uma pessoa
function greet(name: string): string {
    return `Hello, ${name}!`;
}

// Usando a função
const userName: string = "World";
console.log(greet(userName));