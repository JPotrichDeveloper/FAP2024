let num1 = [10, 20, 30, 40, 50]
let num2 = [90, 80, 70, 60, 50]

//let mesclar = num1.concat(num2);
//console.log(mesclar);

let mesclar = [...new Set([...num1, ...num2].sort((a, b) => a - b))];
console.log(mesclar);
