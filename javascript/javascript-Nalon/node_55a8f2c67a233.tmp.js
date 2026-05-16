//bibloteca do node para receber as informações do usuário via terminal

const readLine = require('readline')

// diz que a leitura será via terminal
const leitor = readLine.createInterface({
    input: process.stdin,
    output: process.stdout
});

leitor.question("Qual é seu nome? ", (nome)=>{
    console.log("Olá", nome)
    console.log("Seja bem-vindo!")
})