programa
{
	
	funcao inicio()
	{
		real salarioFixo, valorVendas, comissaoMaior, comissaoMenor

		escreva("Seu sálario fixo: ")
		leia(salarioFixo)

		escreva("Valor de vendas efetuadas: ")
		leia(valorVendas)

		comissaoMaior = (valorVendas *5)/100
		comissaoMenor = (valorVendas * 3)/100
		
		se(valorVendas > 1.500){
			escreva("seu sálario total é: ", salarioFixo + comissaoMaior)
		}senao{
			escreva("seu sálario total é: ", salarioFixo + comissaoMenor)
		}

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 192; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */