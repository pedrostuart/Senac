const frutas = ["Banana", "Maça", "Uva", "Laranja", "Limão"]
// 0, 1, 2, 3...

// exibindo array:
console.log(frutas)

console.log("A primeira fruta: ",frutas[0])
console.log("A ultima fruta: ",frutas[4])
console.log("Total de frutas: ",frutas.length)
//Adicionando um item elemento no array
frutas.push("Pêssego")
console.log(frutas)

//Removendo um item elemento no array
frutas.splice(5,1)/* o primeiro numero se refere a posição do item no array e o segundo numero quantos item ele quer apagr dali a diante*/


/*Percorrendo o array com laço FOR:*/
for(let i = 0; i<=frutas.length; i++){/* length vê quantos itens tem dentro do array de 0 á ...*/
    console.log("Indice: ",i)
    console.log(frutas[i])
}
console.log(frutas)

/*Percorrendo o array com ForEach:*/
frutas.forEach((valor, indice) =>{/*ForEach tem uma pré - definiçãoque se eu percorrer um array com forEach e colocar dois valores no parametro ele ja indentifica como indece e valor*/
    console.log("Indice:", indice,valor)
})
/*percorrendo com for of*/

for(const fruta of frutas){
    console.log("Fruta de vez: ",fruta)
}

/*USANDO MÉTODO FILTER PARA LOCALIZAR APENAS OS NÚMEROS PARES*/
const numeros = [1,2,3,4,5,6,7,8,9,10]
const numerosPares = numeros.filter((numeros)=>{
    return numeros % 2 === 0
})

const numerosImpares = numeros.filter((numeros)=>{
    return numeros % 2 !== 0
})
console.log(numerosPares)
console.log(numerosImpares)

//método map para a manipulação dos valores
//Tratamos dessa forma como valores diferentes (sem modificar o array original)

const quadrado = numeros.map((numero)=>{
    return numero * numero
})
console.log(quadrado)