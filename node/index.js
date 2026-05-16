//Importa o módulo HTTP do node.js
//Este módulo já vem nativo no node e permite criar servidores web
const http = require("http")

//Criando Servidor
//CreateServer recebe a função que será executada toda vez que alguém acessar o servidor

// require (request) => informações da requisição *URL*
// resposta (response) => resposta que vem enviar ao cliente
const servidor = http.createServer((require, resposta) =>{
    //enviando a resposta para o navegador
    resposta.end("Meu primeiro servidor node")
})

// Faz o servidor buscar na porta 3000 (escolhida por nós)
servidor.listen(3000)

//Portas comuns
//3000 => em desenvolvimentos
//5000 => API`S
//8080 => alternativas para web
// 80 => HTTP padrão
// 443 => HTTPS