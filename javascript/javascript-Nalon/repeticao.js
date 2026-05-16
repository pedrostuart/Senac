// Laços de repetição
// While, Do While, For

let contador = 1
while(contador<=10){
    console.log(contador)
    contador++
}
let contador2 = 20
do{
    console.log(contador2)
    contador2++
}while(contador2<=10)



for(let numero = 1; numero <=5; numero++){
    console.log(numero)
}

let palavra = "Calopsita"

//lenght = conta quantos caracteres existem em uma string
for(let contador = 0; contador <=palavra.length; contador++){
    console.log(palavra[contador])/*o "[contador]" esta dentro da variavel palavra explorando e escolhendo as letras a partir de suas posições e do número do contador*/
}