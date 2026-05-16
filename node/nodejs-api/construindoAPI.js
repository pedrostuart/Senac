const http = require("http")
const { json } = require("stream/consumers")
const url = require("url")


let pedidos = [{
    id: 1,
    cliente: "Fernanda", 
    produto: "Tênis",
    status: "pendente"
}]
const server = http.createServer((req, res) =>{
    res.setHeader('Content-Type', 'application/JSON')

    //importando url nativa do node JS
    const url = require("url")
    const urlCompleta = url.parse(req.url, true)

    /*recebendo dados da rota atraves da url*/
    const rota = urlCompleta.pathname
    const metodo = req.method

    // Liberação do CORS, trava de segurança do computador,
    res.setHeader("Access-Control-Allow-Origin", "*")//aqui eu digo que todos conseguem acessar minha API
    res.setHeader("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE, OPTIONS")//acesso a os tipo de metodos
    res.setHeader("Access-Control-Allow-Headers", "Content-tyoe")//VAi dar aceesso a o tipo de aplicação que estou recebendo, no caso em JSON

    if(metodo === "OPTIONS"){
        res.statusCode=204
        res.end()
        return
    }

    if(rota === "/pedidos" && metodo === "GET"){
        res.end(JSON.stringify({
            mensagem: 'Lista de Pedidos', 
            dados: pedidos
        }))
        return
    }

    if(rota === "/pedidos" && metodo === "POST"){
        let body = ''

        req.on("data", parte =>{/*parte ele recebe o que vem da requisição*/
            body+=parte
        })
        req.on("end", ()=>{
            const novoPedido = JSON.parse(body)
            pedidos.push(novoPedido)

            res.statusCode = 201
            res.end(JSON.stringify({
                mensagem:"OK",
                pedidos: novoPedido 
            }))
        })
        return
    }

    if(rota === "/pedidos" && metodo ==="PUT"){
        let body = ''

        req.on("data", parte=>{
            body += parte
        })
        req.on("end", ()=>{
            const atualizarPedido = JSON.parse(body)

            let encontrado = false // facilitara o servidor encontra o id correspondente 

            //pedidos está recebendo o mapeamento do array pedidos
            //pedido (singular) = cada objeto do array
            pedidos = pedidos.map(pedido =>{
                //Comparação de ID para ser possível substituir
                if(pedido.id === atualizarPedido.id){
                    encontrado = true // Quando localizado, vira true.
                    //retornará todos os dados de pedidos que não foram alterados + status de um deles

                    return{
                        ...pedido,
                        status:atualizarPedido.status
                    }
                    
                }return pedido
                
            })
            //CASO O PEDIDO NÃO SEJA ENCONTRADO (EXEMPLO: BUSCAR O ID 5, QUE NÃO EXISTE), SERÁ RETORNADO O STATUS CODE 404 E UMA MENSAGEM DE PEDIDO ENCONTRADO
            if(!encontrado){
                res.statusCode = 404
                res.end(JSON.stringify({
                mensagem:"Pagina não encontrada"}))
                    
            return
            }
            
            //RESPOSTA FINAL PARA O USUARIO, COM O PEDIDO LOCALIZADO E ATUALIZADO VIA REQUISIÇÃO DO PUT
            res.end(JSON.stringify({
                mensagem:"Atualização feita com sucesso!",
                atualizarPedido: pedidos
            }))
        })
        return
    }
    if(rota === "/pedidos" && metodo === "DELETE"){
        let body = ''
        req.on("data", parte =>{
            body += parte
        })    
        req.on("end", ()=>{
            const deletarPedido = JSON.parse(body)

            //Medira o tamanho do array antes de o deletar-mos
            const tamanhoAntes = pedidos.length


            //Manterá todos os pedidos que NÃO tem o id informado e removerá os que tem o ID igual ao enviado pela requisição
            pedidos = pedidos.filter(pedido => pedido.id !== deletarPedido.id)

            //Fará a comparação de tamanho do array, se os tamanhos estiverem identicos, o pedido não foi localizado para que seja apagado
            if(pedidos.length === tamanhoAntes){
                res.statusCode = 404;
                res.end(JSON.stringify({mensagem : "Pedido não encontrado"}))
                return
            }
            res.end(JSON.stringify({
                mensagem:"Pedido removido",
                deletarPedido: pedidos
            }))
        })
        return
    }

    res.statusCode = 404
    res.end(JSON.stringify({
        mensagem:"Pagina não encontrada"
    }))
})

server.listen(3000, ()=>{
    console.log("Servidor: http://localhost:3000/pedidos")
})