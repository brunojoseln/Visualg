algoritmo "Sorteio Loteria"
// Função : Sortear 6 numeros aleatorios (1 ate 60),onde eles não se repetem e
//        : são exibidos em ordem crescente.
// Autor : Bruno José 1°INFO
// Data : 7/11/2017
// Seção de Declarações
var

vetnum: vetor [0..5] de inteiro
i,j,temp: inteiro
op: caracter
inicio

limpatela
op <- "s"
repita
limpatela
   escreval
   escreval("-----------Sorteio Loteria ---------- ")
   escreval


   repita
      // Sorteio dos números aletórios
      para i de 0 ate 5 faca
         vetnum [i] <- randi (60) + 1
      fimpara


      //Ordenação dos números    Ordenação por bolh (Bubble Sort)
      para i <- 0 ate 4 faca
         para j <- i+1 ate 5 faca
            se (vetnum [i] > vetnum [j]) entao
               temp <- vetnum [i]
               vetnum[i] <- vetnum[j]
               vetnum[j] <-temp
            fimse
         fimpara
      fimpara

      //Evitar repetições

      op<- "n"
      para i <-0 ate 4 faca
         se vetnum [i] = vetnum[i+1] entao
            op <-"s"
         fimse
      fimpara


   ate (op <> "s")


   //exibição na tela
   escreval("Os números sorteados são: ")
   para i <- 0 ate 5 faca
      escreva (vetnum[i])
   fimpara

   escreval
   escreval


   repita
      escreva ("Quer rodar o programa novamente? [s/n]: ")
      leia (op)
   ate ((op = "s") ou (op = "n"))
   escreval
   escreval
   escreval ("----------Fim----------")
ate (op<>"s")

fimalgoritmo

