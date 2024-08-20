programa
{
	inclua biblioteca Texto
	inclua biblioteca Util
	inclua biblioteca Matematica
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
	funcao vazio aguarde(inteiro milesimos) {
		escreva("\n...\n")
		Util.aguarde(milesimos)
	}
	funcao real teorema_pitagoras(real b, real c) {
		const real EXPOENTE_PITAGORICO = 2.0
		const real CASAS_DECIMAIS = 0.0
		retorne Matematica.arredondar(Matematica.raiz(Matematica.potencia(b, EXPOENTE_PITAGORICO) + Matematica.potencia(c, EXPOENTE_PITAGORICO), EXPOENTE_PITAGORICO), CASAS_DECIMAIS)
	}

	funcao inicio()
	{
		// variáveis letra a
		real largura = 0
		real comprimento = 0
		// variáveis letra b
		// caprichos
		inteiro escolha_menu = 0
		inteiro i
		cadeia menu[] = {"Letra a", "Letra b"}
		enquanto (verdadeiro) {
			cabecalho (40, "Exercício 5")
			para (i = 0; i < Util.numero_elementos(menu); i++) {
				escreva("[", i+1, "] ", menu[i], "\n")
			}
			pergunte("Qual das letras desejas executar? ")
			leia(escolha_menu)
			limpa()
			cabecalho(40, menu[escolha_menu - 1])
			se (escolha_menu == 1) {
				comprimento = 11.5
				largura = 6.3
				escreva("Será necessário de, no mínimo, ", teorema_pitagoras(comprimento, largura), " unidade de medida.")
			}
			senao se (escolha_menu == 2) {
				enquanto (verdadeiro) {
					pergunte("Qual o comprimento do telhado? ")
					leia(comprimento)
					se (comprimento <= 0) {
						escreva("Valor inválido, tente novamente!\n")
					}
					senao {
						pare
					}
				}
				enquanto (verdadeiro) {
					pergunte("Usando a mesma unidade de medida da resposta anterior, qual a largura do telhado? ")
					leia(largura)
					se (largura <= 0) {
						escreva("Valor inválido, tente novamente!\n")
					}
					senao {
						pare
					}
				}
				escreva("Será necessário de, no mínimo, ", teorema_pitagoras(comprimento, largura), " unidade de medida.")
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
 * @POSICAO-CURSOR = 718; 
 * @DOBRAMENTO-CODIGO = [6, 11, 20];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */