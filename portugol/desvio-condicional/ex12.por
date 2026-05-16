programa
{
	
	funcao inicio()
	{
		real numeroConta, saldo, debito, credito, saldoAtual
		
		escreva("Escreva seu saldo: ")
		leia(saldo)

		escreva("Escreva seu débito: ")
		leia(debito)

		escreva("Escreva seu crédito: ")
		leia(credito)

		saldoAtual = (saldo - debito + credito)	

		se(saldoAtual <= 0){
			escreva("Saldo Negativo")
		}senao{
			escreva("Saldo Positivo")
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