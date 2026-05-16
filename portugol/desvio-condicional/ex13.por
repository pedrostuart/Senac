programa
{
	
	funcao inicio()
	{
		inteiro atualEstoque, maximoEstoque, minimoEstoque, mediaEstoque

		escreva("Qual a capacidade atual do estoque: ")
		leia(atualEstoque)
		
		escreva("Qual a quantidade máxima do estoque: ")
		leia(maximoEstoque)

		escreva("Qual a quantidade minima do estoque: ")
		leia(minimoEstoque)

		mediaEstoque = ((maximoEstoque + minimoEstoque)/2)

		se(atualEstoque >= mediaEstoque){
			escreva("Não efetuar compra")
		}senao{
			escreva("Efetuar compra")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 487; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */