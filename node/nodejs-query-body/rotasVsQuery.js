
const http = require("http")
const url = require("url") /* Faz eu conseguir passar os querys*/

// pathname = rota
//query = dados enviados pela url

const server = http.createServer((req, res) =>{
    const urlCompleta = url.parse(req.url, true)/*trazendo a requisição e pelo"req.url" e transformando em string*/

    //dados importantes
    const rota = urlCompleta.pathname
    const query = urlCompleta.query

    if(rota === '/teste' && req.method === 'GET'){
        res.end(JSON.stringify({
            mensagem: 'Funcionou',
            dadosRecebidos: query
        }))
        return
    }
    res.end("Rota não encontrada")
})
server.listen(3000, ()=>{
    console.log("Servidor http://localhost:3000/teste")
})