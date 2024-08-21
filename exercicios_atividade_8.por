programa
{
	inclua biblioteca Matematica
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
	funcao vazio aguarde(inteiro tempo) {
		escreva("\n...\n")
		Util.aguarde(tempo)
	}
	funcao real segundos_em_minutos(real segundos) {
		const inteiro SEGUNDOS_POR_MINUTO = 60
		retorne segundos / SEGUNDOS_POR_MINUTO
	}
	
	funcao inicio()
	{
		real megabytes = 0.0
		real megabits_por_segundo = 0.0
		real tempo_gasto
		const inteiro MEGABITS_POR_MEGABYTE = 8
		const inteiro CASAS_ARREDONDADAS = 2
		enquanto (verdadeiro) {
			cabecalho(40, "Exercício 8")
			enquanto (verdadeiro) {
				pergunte("Informe o tamanho do download, em megabytes: ")
				leia(megabytes)
				se (megabytes <= 0) {
					escreva("Valor inválido, tente novamente!\n")
				}
				senao {
					pare
				}
			}
			enquanto (verdadeiro) {
				pergunte("Informe a quantidade de megabits por segundo: ")
				leia(megabits_por_segundo)
				se (megabits_por_segundo <= 0) {
					escreva("Valor inválido, tente novamente!\n")
				}
				senao {
					pare
				}
			}
			tempo_gasto = Matematica.arredondar(segundos_em_minutos(megabytes / (megabits_por_segundo / MEGABITS_POR_MEGABYTE)), CASAS_ARREDONDADAS)
			escreva("A quantidade de tempo gasto, em minutos, para fazer o download com tamanho de ", megabytes, " megabytes\n")
			escreva("e rodando ", megabits_por_segundo, " megabits por segundo, será de ", tempo_gasto, " minutos.")
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
 * @POSICAO-CURSOR = 1925; 
 * @DOBRAMENTO-CODIGO = [5, 11, 20, 23, 27];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */