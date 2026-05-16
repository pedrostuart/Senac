programa
{
	
	funcao inicio()
	{
		inteiro n1, maior, menor
		maior = 0
		menor = 0
		escreva("Digite um número: ")
		leia(n1)

			se(n1 > maior){
				maior = n1
			}
			se(n1 < menor){
				menor = n1
			}
			enquanto (n1 > 0){
				
			escreva("Digite um número: ")
			leia(n1)
			se(n1 > maior){
			maior = n1
			}
			se(n1 < menor){
			menor = n1
			}	
				
			}
		escreva(maior, ", ", menor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 237; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */