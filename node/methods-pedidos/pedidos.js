const http = require("http")

let pedidos = [
    {
        id: 1,
        cliente: "Fernanda",
        produto: "Pizza de frango com catupiry",
        status: "pendente"
    }
]
const server = http.createServer( ( requisicao, resposta )  =>  {
    let method = requisicao.method
    let url = requisicao.url 
    
    if(url === '/pedidos' && method === "GET"){
        resposta.end(JSON.stringify(pedidos))  /*Transformando o arquivo em JSON e enviando uma mensagem*/
        /*é a mensagem que eu estou exibindo, no caso o array pedidos*/
        resposta.statusCode = 200
        return
    }
})

server.listen(3000, ()=>{ /*3000 é a porta do servidor*/
    console.log("Nome do servidor http://localhost:3000/pedidos") //CRIANDO ACESSO PRO SERVIDOR
})