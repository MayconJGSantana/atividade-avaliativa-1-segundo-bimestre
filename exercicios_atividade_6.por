programa
{
	inclua biblioteca Util
	inclua biblioteca Texto
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
	funcao inteiro dias_para_minutos(inteiro dias) {
		const inteiro HORAS_POR_DIAS = 24
		const inteiro MINUTOS_POR_HORA = 60
		retorne dias * HORAS_POR_DIAS * MINUTOS_POR_HORA
	}
	funcao real anos_para_semanas(inteiro anos) {
		const real DIAS_POR_ANO = 365.25
		retorne anos * DIAS_POR_ANO / 7
	}
	funcao inteiro minutos_para_horas(real minutos) {
		const inteiro MINUTOS_POR_HORA = 60
		retorne minutos / MINUTOS_POR_HORA
	}
	funcao vazio aguarde(inteiro milesimos) {
		escreva("\n...\n")
		Util.aguarde(milesimos)
	}

	funcao inicio()
	{
		inteiro minutos = 0
		inteiro dias_por_semana = 0
		enquanto (verdadeiro) {
			cabecalho(40, "Exercício 6")
			enquanto (verdadeiro) {
				pergunte("Você lê quantos minutos por dia? ")
				leia(minutos)
				se (minutos < 0 ou minutos > dias_para_minutos(1)) {
					escreva("Valor inválido, tente novamente!\n")
				}
				senao {
					pare
				}
			}
			enquanto (verdadeiro) {
				pergunte("Por quantos dias da semana tu lê? ")
				leia(dias_por_semana)
				se (dias_por_semana > 7 ou dias_por_semana < 0) {
					escreva("Valor inválido, tente novamente!\n") 
				}
				senao {
					pare
				}
			}
			escreva("Lendo ", minutos, " minutos por dia, durante ", dias_por_semana, " dias da semana, em um ano terá dedicado a leitura ", minutos_para_horas(dias_por_semana * anos_para_semanas(1) * minutos), " horas.")
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
 * @POSICAO-CURSOR = 1630; 
 * @DOBRAMENTO-CODIGO = [4, 10, 19, 22, 27, 31];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */