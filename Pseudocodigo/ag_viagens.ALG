Algoritmo "Ag�ncia de Viagens - Conex�o Brasil"

//Registros para cadastros

tipo
   cadastro_cliente=registro
      nome: caracter
      cpf: inteiro
      local_partida: caractere
      idade: inteiro
      destino: caracter

   fimregistro

Var

 cliente: vetor [1..5] de cadastro_cliente
 i, j, contador:inteiro
 resposta: caracter

Inicio

//Cadastro cliente

 escreval ("Cadastrar Cliente")
 i <- 1
 resposta <- "SIM"
    enquanto (resposta = "SIM") faca
          escreva (i,"Digite o nome: ")
          leia (cliente[i].nome)
          escreva ("Digite o CPF: ")
          leia (cliente[i].cpf)
          escreva ("Digite o local de partida: ")
          leia (cliente[i].local_partida)
          escreva ("Digite a sua idade: ")
          leia (cliente[i].idade)
          escreval ("Escolha seu destino: SSA/FOR/REC/SDU")
          leia (cliente[i].destino)
               se cliente[i].local_partida <> cliente[i].destino entao
                  se cliente[i].destino = "SSA"  entao
                     escreva("Seu destino � Salvador!")
                  fimse
                  se cliente[i].destino = "FOR"  entao
                     escreva("Seu destino � FORTALEZA!")
                  fimse
                  se cliente[i].destino = "REC"  entao
                     escreva("Seu destino � Recife!")
                  fimse
                  se cliente[i].destino = "SDU"  entao
                     escreva("Seu destino � Rio Janeiro!")
                  fimse
               senao
                    escreval("Destino igual ao local de partida, digite outro destino:")
                    leia (cliente[i].destino)
                         se cliente[i].destino = "SSA"  entao
                            escreva("Seu destino � Salvador!")
                            fimse
                         se cliente[i].destino = "FOR"  entao
                            escreva("Seu destino � FORTALEZA!")
                            fimse
                         se cliente[i].destino = "REC"  entao
                            escreva("Seu destino � Recife!")
                            fimse
                         se cliente[i].destino = "SDU"  entao
                            escreva("Seu destino � Rio Janeiro!")
                            fimse
               fimse
               escreval()
          escreval("Cadastrar novo cliente? SIM/NAO")
          leia (resposta)

               se resposta = "NAO" entao
                  escreval("Cadastro Finalizado!")
                senao
                 i <- i + 1
               fimse

  fimenquanto
  
  escreval()
  //Viagens Cadastradas
  para j de 1 ate i faca
  escreval("Cliente Cadastrado: ",cliente[j].nome)
  escreval("Destino Escolhido: ",cliente[j].destino)
  fimpara


Fimalgoritmo