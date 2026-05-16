//Simula um "banco de dados" em memória

const http = require("http")
const { json } = require("stream/consumers")


//array de objeto
let livros = [/*Array não está no servido ainda*/
    {
        id: 1,
        titulo: "O pequeno principe",
        autor: "Antonie de Saint-Exupery"
    }
]
const server = http.createServer((req, res) => {/* COM O REQUIRE EU ESTOU REQUIRINDO METODO E FUNÇÃO QUE ESTÃO DENTRO DO URL */
    const method = req.method
    const url = req.url

    res.setHeader('Content-Type', 'application/json')//Está falando pro servidor que o arquivo vai ser lido em JSON

    //Método Get
    if (url === "/livros" && method === "GET") {
        res.statusCode = 200
        //Retorna a lista de livros em formato JSON
        res.end(JSON.stringify(livros))//Está mudando o array para um arquivo JSON e exibindo
        return//encerra a requisição
    }

    //METODO POST
    if (url === "/livros" && method == "POST") {
        let body = '';

        req.on('data', parte => {/*ON É UM INICIO DE UMA AÇÃO E 'DATA' É O INÍCIO DESSA AÇÃO*/
            body += parte
        })

        req.on('end', () => {
            const novoLivro = JSON.parse(body)/*parse serve para pegar um JSON e transformar em String*/

            livros.push(novoLivro)

            res.statusCode = 201
            res.end(JSON.stringify({ /*Pega uma string e transforma em JSON*/
                mensagem: 'livro cadastrado com sucesso!',
                livro: novoLivro
            }))
        })
        return
    }

    //METODO PUT
    if (url === '/livros' && method === 'PUT') {
        let body = '';

        req.on('data', parte => {/*ON É UM INICIO DE UMA AÇÃO E 'DATA'...*/
            body += parte
        })

        req.on('end', () => {
            const livroAtualizado = JSON.parse(body)/*parse serve para pegar um JSON e transformar em String*/
            
            livros = livros.map(livro => {
                if (livro.id === livroAtualizado.id) {
                    return livroAtualizado
                }
                return livro
            })

            res.statusCode = 200 //sucesso

            res.end(JSON.stringify({/* END SIGNIFICA E MOSTRAR E TERMINAR (FINAL)*/
                mensagem: 'livro atualizado',
                livros: livros /* o primeiro livro e as mesnsagem e o que ele ta recebendo é o conteúdo*/
            }))
        })
        return/*retorno da requisição*/
    }

    //METODO DELETE
    if(url === '/livros' &&  method === "DELETE"){
        let body = ''

        req.on('data', parte =>{
            body += parte
        })
        req.on("end", ()=>{
            const dados = JSON.parse(body)/*Transformando ems string*/
            livros = livros.filter(livro => livro.id !== dados.id)/*Dados está recebendo quem agente deletou*/

            res.statusCode = 200

            res.end(JSON.stringify ({
                mensagem: 'apagado com sucesso',
                livros: livros
            }))
        })
        return
    }
    res.statusCode = 404

    res.end(JSON.stringify({
        mensagem: "Rota não encontrada"
    }))
})
    server.listen(3000, () => {
        console.log("Servidor disponível em http://localhost:3000/livros")
    })

