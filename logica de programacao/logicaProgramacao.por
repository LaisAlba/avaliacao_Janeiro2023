programa {
  inclua biblioteca Matematica --> Mat

  funcao inicio() {
    inteiro valor
    enquanto(valor != 0){
      escreva ("Digite 1 para executar o exercicio de operacoes matematicas", "\n"))
      escreva ("Digite 2 para executar o exercicio de conversao de valores", "\n"))
      leia(valor)
      escreva ("\n")

      se(valor == 1)
        operacoesMatematicas()
      se(valor == 2)
        converterValores()
      senao
        escreva ("Valor de execucao invalido, digite 1 ou 2 | Digite 0 para sair", "\n"))
    }
  }

  funcao operacoesMatematicas(){
    Exercicio_1

    real a, b

    escreva ("Digite o primeiro numero: ")
    leia(a)

    escreva("Digite o segundo numero: ")
    leia(b)

    escreva ("A soma e: ", a+b, "\n")
    escreva ("A subtracao e: ", a-b,"\n")
    escreva ("A divisao e: ", a/b,"\n")
    escreva ("A multiplicacao e: " , a*b, "\n")
  }

  funcao converterValores(){
    Exercicio_2
    real conversao, dolar, cotacao


    escreva("Valor em dolar disponivel que deseja converter: ")
    leia(dolar)

    escreva("Cotacao atual do dolar: ")
    leia(cotacao)

    conversao = (dolar*cotacao)

    escreva("O valor disponivel em dolar convertido em real e: R$ ", Mat.arredondar(conversao,2))
    escreva ("\n")
    escreva ("\n")
  }
}