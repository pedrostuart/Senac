programa
{
	
	funcao inicio()
	{
		escreva("Faça Somas \n")

		inteiro n1, n2
		caracter simnao
		
			escreva("Digite o primeiro número da soma: ")
			leia(n1)

			escreva("Digite o segundo número da soma: ")
			leia(n2)

			escreva(n1 + n2, "\n")

			escreva("Que continuar a fazer cálculos? S/N: ")
			leia(simnao)
		
		

		enquanto(simnao == 's' ou simnao == 'S'){
			escreva("Digite o primeiro número da soma: ")
			leia(n1)

			escreva("Digite o segundo número da soma: ")
			leia(n2)

			escreva(n1 + n2, "\n")

			escreva("Que continuar a fazer cálculos? S/N: ")
			leia(simnao)
		}
		escreva("Fim da operação")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 631; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */