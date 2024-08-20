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
	funcao inteiro metros_para_centimetros(inteiro metros){
		retorne metros * 100
	}
	funcao vazio aguarde(inteiro milesimos) {
		escreva("\n...\n")
		Util.aguarde(milesimos)
	}

	funcao inicio()
	{
		inteiro corte_madeira = 1
		inteiro tamanho_madeira = 0
		enquanto (verdadeiro) {
			cabecalho(40, "Exercício 4")
			enquanto(verdadeiro) {
				pergunte("Qual o tamanho da madeira, em metros inteiros, que cortarás? ")
				leia(tamanho_madeira)
				tamanho_madeira = metros_para_centimetros(tamanho_madeira)
				se (tamanho_madeira < 1) {
					escreva("Valor inválido, tente novamente!\n")
				}
				senao {
					pare
				}
			}
			enquanto (verdadeiro) {
				pergunte("Qual o tamanho dos cortes, em centímetros inteiros, que você realizará na madeira? ")
				leia(corte_madeira)
				se (corte_madeira < 0 ou corte_madeira > tamanho_madeira) {
					escreva("Valor inválido, tente novamente!\n")
				}
				senao {
					pare
				}
			}
			escreva("A madeira renderá ", tamanho_madeira / corte_madeira, " pedaços e sobrará ", tamanho_madeira % corte_madeira, " centímetros.")
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
 * @POSICAO-CURSOR = 1682; 
 * @DOBRAMENTO-CODIGO = [4, 10, 19, 22];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */