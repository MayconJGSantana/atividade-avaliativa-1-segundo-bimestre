programa
{
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

	funcao inicio()
	{
		inteiro minutos = 100
		inteiro disciplinas = 6
		cabecalho(40, "Exercício 4")
		escreva("...")
		escreva("Considerando que estudes 6 disciplinas, dispõe de 1 hora e 40 minutos de tempo para estudar e desejas dividí-lo\n")
		escreva("igualmente para o estudo das matérias, teremos que ", minutos / disciplinas)
		escreva(" minutos são dividos igualmente para as materias e sobram ", minutos % disciplinas, " minutos.")
		escreva("...")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 705; 
 * @DOBRAMENTO-CODIGO = [3, 9];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */