const http = require("http")

const servidor = http.createServer((req, res) =>{
    //Desta forma estamos manipulando o que o usuário poderá ver
    //O conteúdo após a "/" dirá respeito a cada página da nossa aplicação
    // Onde o usuário verá o que nós queremos, a depender da página 
    if(req.url == "/"){
        res.end("Pagina principal")
    }else if (req.url == "/sobre"){
        res.end("Sobre o sistema")
    }else if(req.url == "/contato"){
        res.end("Contato")
    }else{
        res.end("Página nao encontrada")
    }
})
servidor.listen(3000)