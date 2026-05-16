programa
{
	
	funcao inicio()
	{
		inteiro anoNascimento, anoAtual, idade

		escreva("Seu ano de nascimento: ")
		leia(anoNascimento)

		escreva("O ano atual: ")
		leia(anoAtual)

		idade = anoAtual - anoNascimento
		se(idade <= 15){
			escreva("Você não pode votar")
		}senao se(idade <= 17 ou idade >= 69){
			escreva("Você vota se quiser")
		}senao{
			escreva("Voto obrigatório")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 392; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */