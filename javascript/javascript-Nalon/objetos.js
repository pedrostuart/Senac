const pessoa = {
    nome: "Pedro",
    idade: 18,
    genero: "Masculino",
    estuda: true,


}
pessoa.sobrenome = "Clara"/*adicionando item */
console.log(pessoa.sobrenome)

delete pessoa.idade /* remove idade dos objetos*/

pessoa.hobbies = ["ler", "escrever"]
console.log(pessoa.hobbies[1])

/*FOR IN -> */
for(const chave in pessoa){
    console.log("Chave: ",chave)
    console.log("Valores: ",pessoa[chave])
}

//Métodos para objetos:
const chaves = Object.keys.pessoa;
const valores = Object.values.pessoa
const entradas = Object.entries.pessoa
console.log(chaves)
console.log(valores)
console.log(entradas)