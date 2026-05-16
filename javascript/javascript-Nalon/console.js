// para declarar uma função, será necessário a palavra reservada "function" + o nome da função

function saudacao(nome){
    console.log("Olá " + nome)
}
saudacao("Pedro")

function calcDobro(numero){
    return numero * 2/*PASSO 2: Eu trabalho esse número dado e devolvo a apenas para a função calcDobro (Imagine o return vai pra dentro da palavara "calcDobro" da função) */
}
const numeroDobro = calcDobro(50)/*PASSO 1: Eu defino que o numero que esta dentro da função é 50 */
console.log("Numero ", numeroDobro)

//arrow function

const saud = (nome) =>{
    console.log("Olá", nome)
}
saud("Rafa")

const calculoDobro = (n1)=>{
    return n1 * 2
}

console.log(calculoDobro(25))

//função mais simplificada

const saudacao2 = nome =>console.log("Olá", nome)
saudacao("Chico")

const calcularDobro = numero => numero * 2
console.log(calcularDobro(2))