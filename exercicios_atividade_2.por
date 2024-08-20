programa
{
	inclua biblioteca Texto
	inclua biblioteca Util
	inclua biblioteca Tipos
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
	funcao real horas_em_dias(real horas) {
		retorne horas / 24
	}
	funcao vazio aguarde(inteiro tempo) {
		escreva("\n...\n")
		Util.aguarde(tempo)
	}
	funcao real minutos_em_horas(real minutos) {
		retorne minutos / 60
	}
	funcao real segundos_em_minutos(real segundos) {
		
		retorne segundos / 60
	}
	funcao real dias_em_anos(real dias) {
		retorne dias / 365.25
	}

	funcao inicio()
	{
		// variáveis letra a
		real segundos_vividos
		// variáveis letra b
		inteiro idade_anos = 0
		cadeia planeta_escolhido = ""
		cadeia planetas[] = {"planeta inválido","terra","mercurio","venus","marte","jupiter","urano","netuno"}
		real ano_terrestre_planetas[] = {1.0, 0.2408467, 0.61519726, 1.8808158, 11.862615, 84.016846, 164.79132}
		inteiro vetor_contem_planeta = 0
		// constantes
		const real ANOS_DE_MERCURIO = 0.2408467
		// capricchos
		inteiro i
		inteiro escolha_menu = 0
		cadeia menu[] = {"Letra a","Letra b"}
		enquanto (verdadeiro) {
			cabecalho(40, "Exercício 2")
			para (i = 0; i < Util.numero_elementos(menu); i++) {
				escreva("[", i+1, "] ", menu[i], "\n")
			}
			enquanto (verdadeiro) {
				pergunte("Qual das letras deseja executar? ")
				leia(escolha_menu)
				se (escolha_menu < 1 ou escolha_menu > 2) {
					escreva("Valor inválido, tente novamente!")
				}
				senao {
					pare
				}
			}
			limpa()
			cabecalho(40, menu[escolha_menu-1])
			se (escolha_menu == 1) {
				segundos_vividos = 977000000
				escreva("Considerando que viveste 977 milhões de segundos,\n")
				escreva("e sua idade está baseada no tempo de translação\n")
				escreva("de mercúrio, podemos verificar que sua idade é\n")
				escreva("igual a ", Tipos.real_para_inteiro(dias_em_anos(horas_em_dias(minutos_em_horas(segundos_em_minutos(segundos_vividos)))) / ANOS_DE_MERCURIO), " anos.")
			}
			senao se (escolha_menu == 2) {
				enquanto (verdadeiro) {
					pergunte("Quantos anos você tem? ")
					leia(idade_anos)
					se (idade_anos < 1) {
						escreva("Valor inválido, tente novamente!")
					}
					senao {
						pare
					}
				}
				enquanto (verdadeiro) {
					pergunte("Em qual planeta queres saber sua idade (Pela mor de Deus, não coloca acento na resposta)? ")
					leia(planeta_escolhido)
					planeta_escolhido = Texto.caixa_baixa(planeta_escolhido)
					vetor_contem_planeta = 0
					para (i = 0; i < Util.numero_elementos(planetas); i++) {
						se (planeta_escolhido == planetas[i]) {
							vetor_contem_planeta = i
							pare
						}
					}
					se (vetor_contem_planeta == 0) {
						escreva("Valor inválido, tente novamente!\n")
					}
					senao {
						pare
					}
				}
				escreva("Em ", planeta_escolhido, ", a sua idade será de ", idade_anos / ano_terrestre_planetas[vetor_contem_planeta-1], " anos.")
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
 * @POSICAO-CURSOR = 3378; 
 * @DOBRAMENTO-CODIGO = [5, 11, 20, 23, 26, 30, 33];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */