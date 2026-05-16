programa
{
	
	funcao inicio()
	{
		inteiro diaNascimento, mesNascimento

		escreva("Digite o dia de seu nascimento: ")
		leia(diaNascimento)
		
		escreva("Digite em número o seu mês de nascimento: ")
		leia(mesNascimento)

		escolha(mesNascimento)
		{
		caso 1: 
			se(diaNascimento <= 20){
				escreva("Capricórnio")
			}senao{
				escreva("Aquário")
			}
			pare
			
		caso 2: 
			se(diaNascimento <= 18 ){
				escreva("Aquário")
			}senao{
				escreva("Peixes")
			}
			pare
		caso 3:
			se(diaNascimento <= 20){
				escreva("Peixes")	
			}senao{
				escreva("Áries")
			}
			pare
		caso 4: 
			se(diaNascimento <= 20){
				escreva("Áries")
			}senao{
				escreva("Touro")
			}
			pare
		caso 5:/*maio*/
			se(diaNascimento <= 20){
				escreva("Touro")
			}senao{
				escreva("Gêmeos")
			}
			pare
		caso 6: 
			se(diaNascimento <= 20){
				escreva("Gêmeos")
			}senao{
				escreva("Câncer")
			}
			pare
		caso 7: 
			se(diaNascimento <= 22){
				escreva("Câncer")
			}senao{
				escreva("Leão")
			}
			pare
		caso 8:
			se(diaNascimento <=22){
				 escreva("Leão")	
			}senao{
				escreva("Virgem")
			}
			pare
		caso 9:
			se(diaNascimento <= 22){
				escreva("Virgem")
			}senao{
				escreva("Libra")
			}
			pare
		caso 10: 
			se(diaNascimento <=22){
				escreva("Libra")	
			}senao{
				escreva("Escorpião")
			}
			pare
		caso 11:
			se(diaNascimento <= 21){
				escreva("Escorpião")	
			}senao{
				escreva("Sargitário")
			}
			pare
		caso 12: 
			se(diaNascimento <= 21){
				escreva("Sargitário")
			}senao{
				escreva("Carpricórnio")
			}
			pare
				
		}	
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 76; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */