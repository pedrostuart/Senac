// FAZENDO O REQUIREMENTO/IMPORTAÇÃO DOS MÓDULOS HTTP E URL DO NODE 
const { create } = require("domain")
const http = require("http")
const url = require("url")/* Faz eu conseguir passar os querys*/

//CRIAÇÃO DO SERVIDOR

const server = http.createServer((requisicao, resposta) =>{
    /* AQUI ESTAMOS RECEBENDO A URL E "QUEBRANDO" A MESMA, COLOCALNDO COMO TEXTO*/
    const urlCompleta = url.parse(requisicao.url, true)/*transformando url em string*/

    console.log(urlCompleta)
    resposta.end("Veja console")
})
server.listen(3000, ()=>{
    console.log("Servidor rodando em http://localhost:3000")
})