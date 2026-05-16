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
    if(url === '/pedidos' && method === "POST"){
        let body = '';

        requisicao.on('data', parte=>{
            body += parte
        })

        requisicao.on('end', ()=>{
            const novoPedido = JSON.parse(body)

            pedidos.push(novoPedido)

            resposta.statusCode = 201
            resposta.end(JSON.stringify({
                mensagem: 'pedido adicionado com sucesso',
                pedidos: novoPedido 
            }))
        })
        return
    }
    if(url === "/pedidos" && method === "PUT"){
        let body = ''

        requisicao.on('data', (parte)=>{
            body += parte
        })
        requisicao.on('end', ()=>{
            const produtoAtualizado = JSON.parse(body)
            resposta.statusCode = '200'
            if(pedidos !== produtoAtualizado){
                resposta.end(JSON.stringify({
                    mensagem: 'atualizado',
                    pedidos: produtoAtualizado
                }))
            }
            return
        })
    }
    
    resposta.end(JSON.stringify("ERRO")) 
    resposta.statusCode = 404
})

server.listen(3000, ()=>{ /*3000 é a porta do servidor*/
    console.log("Nome do servidor http://localhost:3000/pedidos") //CRIANDO ACESSO PRO SERVIDOR
})