//Estamos importando a função createServer do módulo http do Node

const {createServer} = require("node:http");

const hostname = "127.0.0.1"; //endereço do servidor
const port = 3000; // porta onde o servidor vai rodar

//Criando o servidor
const server = createServer((req, res) =>{
    res.statusCode = 200;
    //Define o tipo de conteúdo da resposta
    //aqui estamos dizendo que é um text simples
    res.setHeader("Content-Type", "text/plain");

    res.end("hello, NODE!");
})
//Faz o servidor "escutar na porta e no endereço que definimos"
//Quando o servidor iniciar, executa essa função
server.listen(port, hostname, () =>{
    console.log(`Server running ar http://${hostname}:${port}/`);
});