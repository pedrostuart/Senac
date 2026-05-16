programa
{
	
	funcao inicio()
	{
		real n1, n2

		escreva("Digite a nota 1: ")
 		leia(n1)

 		

 		enquanto(n1 <0 ou n1 >10 ){
 			escreva("Digite a nota 1: ")
 			leia(n1)
 		}

 		escreva("Digite a nota 2: ")
 		leia(n2)

 		enquanto(n2 <0 ou n2 >10){
 			escreva("Digite a nota 2: ")
 			leia(n2)
 		}
 		
 		escreva("média: ", (n1+n2)/2)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 314; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */