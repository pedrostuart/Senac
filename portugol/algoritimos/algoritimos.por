programa
{
	
	funcao inicio()
	{	
		/*ANTECESSOR E SUCESSOR DE UM NÚMERO*/
		/*inteiro n1, antecessor, sucessor
		escreva("Digite um número e exibirei o seu antecessor e seu sucessor: ")
		leia(n1)

		antecessor = n1 - 1
		sucessor = n1 + 1
		escreva("O número antecessor é ", antecessor, "\nO número sucessor é ", sucessor)*/
		
		/*ÁREA DE UM RETÂNGULO*/
		/*real altura, largura
		
		escreva("Digite a altura do retângulo: ")
		leia(altura)

		escreva("Digite a largura do retângulo: ")
		leia(largura)

		escreva("A área do retângulo é ", altura * largura)*/

		
		/*IDADE DM DIAS*/
		/*inteiro idadeAno, idadeMes, idadeDia

		escreva("Escreva em que ano você nasceu: ")
		leia(idadeAno)

		escreva("Escreva em que Mês você nasceu: ")
		leia(idadeMes)

		escreva("Escreva o dia que você nasceu: ")
		leia(idadeDia)

		idadeAno = 2026 - idadeAno
		idadeAno = idadeAno * 365

		idadeMes = idadeMes * 30
		escreva("Essa é sua idade em dias: ", idadeAno + idadeMes + idadeDia)*/
		
		
		
		

		/*VOTOS ELEIÇÃO*/
		real eleitores, vtsBrancos,  vtsNulos, vtsValidos, calculoBrancos, calculoNulos, calculoValidos
		
		escreva("Total de eleitores: ")
		leia(eleitores)

		escreva("Votos Brancos: ")
		leia(vtsBrancos)

		escreva("Votos Nulos: ")
		leia(vtsNulos)

		escreva("Votos Valídos: ")
		leia(vtsValidos)

		calculoBrancos = vtsBrancos / eleitores
		calculoNulos = vtsNulos / eleitores
		calculoValidos = vtsValidos / eleitores


		escreva(calculoBrancos * 100, "% de votos em brancos \n")
		escreva(calculoNulos * 100, "% de votos Nulos \n")
		escreva(calculoValidos * 100, "% de votos Válidos")


		/*Sálario Reajuste*/

		/*real salarioMensal, reajuste, calculo, tratar

		escreva("Seu sálario mensal: ")
		leia(salarioMensal)

		escreva("Reajuste: ")
		leia(reajuste)
		reajuste = reajuste / 100
		calculo =  salarioMensal * reajuste 
		
		escreva("Sálario de: ", salarioMensal + calculo)*/

		/*Custo de um carro*/

		/*real custoFabrica, distribuidor, impostos, somaPorcentagem, calculo

		escreva("Custo de fábrica: ")
		leia(custoFabrica)

		distribuidor = 0.28
		impostos = 0.45

		somaPorcentagem = distribuidor + impostos
		calculo = somaPorcentagem * custoFabrica
		escreva("O valor total do carro vai ser: ",  calculo + custoFabrica)*/

		/*Revendedora de carros usados*/

		/*real carrosVendidos, valorVendas, salarioFixo, comissao

		escreva("Qual é seu sálario fixo: ")
		leia(salarioFixo)

		escreva("Qual é a porcentagem de comissão para cada carro vendido: ")
		leia(comissao)

		escreva("Quantos carros você vendeu: ")
		leia(carrosVendidos)

		escreva("Qual o valor total de suas vendas: ")
		leia(valorVendas)

		comissao = comissao / 100
		valorVendas =  valorVendas * 0.05 

		real calculoComissao, calculoVendas

		calculoComissao = comissao * carrosVendidos
		calculoComissao = calculoComissao * salarioFixo

		escreva("Sálario Final: ", salarioFixo + calculoComissao + valorVendas)*/

		/*temperatura em graus Fahrenheit*/

		/*real fahrenheit

		escreva("Temperatura em fahrenheit: ")
		leia(fahrenheit)

		fahrenheit = fahrenheit - 32 
		fahrenheit = fahrenheit / 9
		escreva("Celcius: ", fahrenheit * 5)*/

		/*Três notas de um aluno*/
		/*real nota1, nota2, nota3, somarNota, ponderar

		escreva("Qual foi a nota 1 desse aluno: ")
		leia(nota1)

		escreva("Qual foi a nota 2 desse aluno: ")
		leia(nota2)

		escreva("Qual foi a nota 3 desse aluno: ")
		leia(nota3)

		somarNota = nota1 * 2 + nota2 * 3 + nota3 * 5
		ponderar = somarNota/10

		escreva("A nota final é: ", ponderar)*/
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1599; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */