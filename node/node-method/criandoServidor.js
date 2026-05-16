// CRIANDO servidor

const http = require("http")

const server = http.createServer((require, resposta) =>{
    //Buscando o tipo de requisição
    console.log(require.method)


    //passando a resposta do servidor com:
    //StatusCode = 200
    //tipo de resposta em um texto simples
    resposta.writeHead(200, {'Content-Type':'text/plain'})
    resposta.end('server')
})
//Indicação da porta para acesso ao servidor
server.listen(3000, ()=>{
    console.log("O servidor está rodando na porta 3000")
    console.log("http://localhost:3000")
})