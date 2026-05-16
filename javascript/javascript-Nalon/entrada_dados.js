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

    leitor.question("Qaual a sua idade?", (idade)=>{
        if(idade>=18){
            console.log("Você é maior de idade")
        }else{
            console.log("Você é menor de idade!")
        }
        leitor.close //encerro o uso do leitor
    })
})
