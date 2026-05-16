programa
{
	
	funcao inicio()
	{
		inteiro maca

		escreva("Quantas maças você comprou? ")
		leia(maca)

		se(maca < 12){
			escreva("o preço total é de: ", maca * 1.30)
		}senao{
			escreva("o preço total é de: ", maca * 1)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 240; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */