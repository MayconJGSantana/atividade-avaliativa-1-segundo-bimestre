programa
{
	inclua biblioteca Matematica
	inclua biblioteca Texto
	inclua biblioteca Tipos
	inclua biblioteca Util
	funcao vazio espacos(inteiro quantidade_espacos) {
		para (inteiro i = 0; i < quantidade_espacos; i++) {
			escreva("=")
		}
		escreva("\n")
	}
	funcao vazio cabecalho(inteiro quantidade_espacos, cadeia enunciado) {
		inteiro teste = 0
		espacos(quantidade_espacos)
		para (inteiro i = 0; i < quantidade_espacos / 2 - Texto.numero_caracteres(enunciado) / 2; i++) {
			escreva(" ")
		}
		escreva(enunciado, "\n")
		espacos(quantidade_espacos)
	}
	funcao vazio pergunte(cadeia enunciado) {
		escreva("-> ", enunciado)
	}
	funcao vazio aguarde(inteiro tempo) {
		escreva("\n...\n")
		Util.aguarde(tempo)
	}

	funcao inicio()
	{
		real metro_quadrado = 0.0
		inteiro quantidade_latas = 0
		inteiro quantidade_litros = 0
		inteiro preco_lata = 0
		real litros_restantes = 0.0
		const inteiro CASAS_DECIMAIS = 2
		const inteiro PRECO_FIXO_LATA = 480
		const inteiro LITRO_POR_METROS = 3
		const inteiro LITROS_POR_LATA = 18
		enquanto (verdadeiro) {
			cabecalho(40, "Exercício 9")
			enquanto (verdadeiro) {
				pergunte("Quantos metros quadrados tem a parede que queres cobrir? ")
				leia(metro_quadrado)
				se (metro_quadrado <= 0) {
					escreva("Valor inválido, tente novamente!\n")
				}
				senao {
					pare
				}
			}
			quantidade_litros = Tipos.real_para_inteiro(metro_quadrado / LITRO_POR_METROS)
			quantidade_latas = quantidade_litros / LITROS_POR_LATA
			se (quantidade_litros % LITROS_POR_LATA != 0 ou quantidade_litros % LITROS_POR_LATA == 0 e quantidade_latas == 0) {
				quantidade_latas += 1
			}
			litros_restantes = quantidade_latas * LITROS_POR_LATA - metro_quadrado / LITRO_POR_METROS
			preco_lata = quantidade_latas * PRECO_FIXO_LATA
			escreva("Para cobrir uma parede de ", metro_quadrado, " metros quadradados é necessário ", quantidade_latas, " latas,\n")
			escreva("cada lata é R$480,00 reais, logo, para comprar as latas necessárias, custará ", preco_lata, " reais.\n")
			escreva("Além disso, restará ", Matematica.arredondar(quantidade_latas * LITROS_POR_LATA - metro_quadrado / LITRO_POR_METROS, CASAS_DECIMAIS), " litros.")
			aguarde(8000)
			limpa()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 856; 
 * @DOBRAMENTO-CODIGO = [6, 21, 24];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
