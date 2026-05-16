programa
{
	
	funcao inicio()
	{
		real pesoM, pesoF , altura
		cadeia sexo
		escreva("Escreva seu sexo, M ou F: ")
		leia(sexo)

		escreva("Escreva sua altura: ")
		leia(altura)
		
		
		se(sexo == "m"){
			escreva(pesoM = (72* altura) - 58)
			
		}senao{
			escreva(pesoF = (62.1 * altura) - 44.7)
			
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 319; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */