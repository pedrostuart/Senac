programa
{
	
	funcao inicio()
	{
		real hrsTrabalhadas, salarioHora, salarioExtra, hrsExtrasTrabalhadas, salario

		escreva("Horas trabalhadas: ")
		leia(hrsTrabalhadas)

		escreva("Escreva o salário por hora: ")
		leia(salarioHora)

		salario = salarioHora * hrsTrabalhadas	
		salarioExtra = (salarioHora * 50)/100
		se(hrsTrabalhadas > 40){
			hrsExtrasTrabalhadas = hrsTrabalhadas - 40
			escreva("Sálario Total: ", (salarioExtra * hrsExtrasTrabalhadas) + salario)	
		}senao{
			escreva("Sálario Total: ", salario)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 522; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */