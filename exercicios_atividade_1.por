programa
{
	inclua biblioteca Texto
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
	funcao real dias_em_horas(real dias) {
		retorne dias * 24
	}
	funcao vazio aguarde(inteiro tempo) {
		escreva("\n...\n")
		Util.aguarde(tempo)
	}
	funcao real horas_em_minutos(real horas) {
		retorne horas * 60
	}
	funcao real minutos_em_segundos(real minutos) {
		retorne minutos * 60
	}

	funcao inicio()
	{
		// variáveis da letra a
		inteiro anos = 0
		// variáveis da letra b
		inteiro decadas = 0
		// variáveis da letra c
		inteiro idade = 0
		// variáveis da letra d
		inteiro chocolate
		// variáveis da letra e
		inteiro segundos_vividos = 0
		// variáveis de capricho
		inteiro escolha_menu = 0
		inteiro i
		cadeia menu[] = {"Letra a","Letra b","Letra c","Letra d","Letra e"}
		// constantes
		const real DIAS_POR_ANO = 365.25
		const inteiro ANOS_POR_DECADA = 10
		const inteiro SEGUNDOS_POR_ANO = 31557600
		enquanto (verdadeiro) {
			cabecalho(40, "Exercício 1")
			para (i = 0; i < Util.numero_elementos(menu); i++) {
				escreva("[", i+1, "] ", menu[i], "\n")
			}
			enquanto (verdadeiro) {
				pergunte("Qual das letras deseja executar? ")
				leia(escolha_menu)
				se (escolha_menu > 5 ou escolha_menu < 1) {
					escreva("Valor inválido, tente novamente!\n")
				}
				senao {
					pare
				}
			}
			limpa()
			cabecalho(40, menu[escolha_menu-1])
			se (escolha_menu == 1) {
				enquanto (verdadeiro) {
					pergunte("Quantos anos queres transformar em horas? ")
					leia(anos)
					se (anos < 1) {
						escreva("Valor inválido, tente novamente!\n")
					}
					senao {
						pare
					}
				}
				escreva("Em horas, ", anos, " anos é igual a ", dias_em_horas(anos * DIAS_POR_ANO))
			}
			senao se (escolha_menu == 2) {
				enquanto (verdadeiro) {
					pergunte("Quantas décadas queres transformar em minutos? ")
					leia(decadas)
					se (decadas < 1) {
						escreva("Valor inválido, tente novamente!\n")
					}
					senao {
						pare
					}
				}
				escreva("Em minutos, ", decadas, " decadas é igual a ", horas_em_minutos(dias_em_horas(decadas * ANOS_POR_DECADA * DIAS_POR_ANO)))
			}
			senao se (escolha_menu == 3) {
				enquanto (verdadeiro) {
					pergunte("Informe a sua idade com o fim de te informar quantos segundos já viveste: ")
					leia(idade)
					se (idade < 1) {
						escreva("Valor inválido, tente novamente!\n")
					}
					senao {
						pare
					}
				}
				escreva("Em segundos, ", idade, " anos é igual a ", idade * SEGUNDOS_POR_ANO)
			}
			senao se (escolha_menu == 4) {
				enquanto (verdadeiro) {
					pergunte("Quantos chocolates você pretende comer na vida? ")
					leia(chocolate)
					se (chocolate < 0) {
						escreva("Valor inválido, tente novamente!\n")
					}
					senao {
						pare
					}
				}
				escreva("Legal")
			}
			senao se (escolha_menu == 5) {
				enquanto (verdadeiro) {
					pergunte("Informe a sua idade em segundos com o fim de te informar a quantos anos de 365.25 dias corresponde: ")
					leia(segundos_vividos)
					se (segundos_vividos < 1) {
						escreva("Valor inválido, tente novamente!\n")
					}
					senao {
						pare
					}
				}
				escreva("Em anos, ", segundos_vividos, " segundos é igual a ", segundos_vividos / SEGUNDOS_POR_ANO, ".")
			}
			aguarde(5000)
			limpa()	
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1263; 
 * @DOBRAMENTO-CODIGO = [4, 10, 19, 22, 27];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2969; 
 * @DOBRAMENTO-CODIGO = [10, 19, 25];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */