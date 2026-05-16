//>, <, ==, ===, <=, >=

const idadeNalon = 26
const idadeClara = 16

//Compara valores:
const saoIguais = idadeNalon == idadeClara
console.log("São iguais? "+ saoIguais)

const comparacao = idadeNalon> idadeClara
console.log("Idade Nalon é maior: "+comparacao)

const comparacaoMenor = idadeNalon< idadeClara
console.log("Idade Nalon é maior: "+comparacaoMenor)

//2 Sinais de "=": comparação de valores
//3 Sinais de "=": comaparação de valroes e tipos

const comparacao3 = idadeNalon !== idadeClara
console.log("São diferentes? "+comparacao)

//Comparadores E, OU, NÃO

const idade = 13
const maioridade = idade>=18
const possuiCnh = true

const podeDirigir = maioridade && possuiCnh

console.log("Pode dirigir? "+podeDirigir)

const podeViajar = maioridade || possuiCnh

console.log("Pode viajar? "+podeViajar)

const acompanhante = !maioridade
console.log("Precisa de acompanhante? "+acompanhante)
