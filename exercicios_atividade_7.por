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
	funcao vazio aguarde(inteiro tempo) {
		escreva("\n...\n")
		Util.aguarde(tempo)
	}
	funcao inicio()
	{
		inteiro idade = 0
		inteiro i
		inteiro soma_idades = 0
		enquanto (verdadeiro) {
			soma_idades = 0
			cabecalho(40, "Exercício 7")
			enquanto (verdadeiro) {
				pergunte("Qual a sua idade? ")
				leia(idade)
				se (idade <= 0) {
					escreva("Valor inválido, tente novamente!\n")
				}
				senao {
					pare
				}
			}
			soma_idades = idade * (idade + 1) / 2
			escreva("A soma de todas a idades que já tiveste, portanto, desconsiderando a que ainda tens, é igual a ", soma_idades, ".")
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
 * @POSICAO-CURSOR = 924; 
 * @DOBRAMENTO-CODIGO = [4, 10, 19, 22];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
