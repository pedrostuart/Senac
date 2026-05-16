programa
{
	
	funcao inicio()
	{
		inteiro inicioJogo, fimJogo, duracao

		escreva("Horário de ínicio: ")
		leia(inicioJogo)

		escreva("Horário final: ")
		leia(fimJogo)
		se(fimJogo > 12){
			
		}
		duracao = fimJogo - inicioJogo
		se(duracao <= 23){
			escreva("Tempo Válido")
		}senao{
			escreva("Tempo inválido")
		}
		

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 199; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */