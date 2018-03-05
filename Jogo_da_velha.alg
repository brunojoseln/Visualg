algoritmo "Jogo da forca"

var
op,i,j,cont : inteiro
vetnum : vetor [0..5,0..5]  de caracter
vit: caractere

// atribuicão das posições
// O procedimento atribuição serve para enumerar os vetores com os numeros de 1 até 9
procedimento atribuicao ()
inicio
vetnum [0,0] <- (" 1 ")
vetnum [0,2] <- (" 2 ")
vetnum [0,4] <- (" 3 ")
vetnum [2,0] <- (" 4 ")
vetnum [2,2] <- (" 5 ")
vetnum [2,4] <- (" 6 ")
vetnum [4,0] <- (" 7 ")
vetnum [4,2] <- (" 8 ")
vetnum [4,4] <- (" 9 ")
fimprocedimento
//----------------------------------

procedimento design ()
inicio
escreval(">>> JOGO DA VELHA <<<")
escreval

//Montagem da estrutura
para i de 0 ate 4 faca
   para j de 0 ate 5 faca
      vetnum [i,j] <- " | "
   fimpara
fimpara

para i de 0 ate 4 faca
   vetnum [1,i] <- (" - ")
fimpara

para i de 0 ate 4 faca
 vetnum [3,i] <- (" - ")
fimpara
//-----------------------------------

atribuicao ()

//Exibição da estrutura
para i de 0 ate 4 faca
   para j de 0 ate 4 faca
      escreva (vetnum [i,j])
      escreva (" ")
   fimpara
   escreval
fimpara
//-----------------------------------
fimprocedimento

procedimento jogo ()
inicio
limpatela
escreval(">>> JOGO DA VELHA <<<")
escreval
para i de 0 ate 4 faca
   para j de 0 ate 4 faca
      escreva (vetnum [i,j])
      escreva (" ")
   fimpara
   escreval
fimpara
fimprocedimento



// jogador 1
procedimento jog1 ()
var
inicio

escreval
Escreval("Jogador 1 (X) ")
Escreva("Escolha a posição: ")
leia (op)
enquanto (op <= 0 ) ou (op >= 10) faca
   escreval
   Escreval("Valor inválido")
   Escreva("Escolha a posição: ")
   leia (op)
fimenquanto
escreval ()

fimprocedimento
//-------------------------------------

//jogador 2
procedimento jog2 ()
var
inicio

escreval
Escreval("Jogador 2 (O) ")
Escreva("Escolha a posição: ")
leia (op)
enquanto (op <= 0 ) ou (op >= 10) faca
   Escreva("Escolha a posição: ")
   leia (op)
   escreval
fimenquanto
escreval ()

fimprocedimento
//------------------------------------------


// Vetor onde o X ira ficar
procedimento posicaox ()
var
inicio
se (op = 1) e (vetnum [0,0] = " 1 ") entao
   vetnum [0,0] <- (" X ")
senao
   se (op = 2) e (vetnum [0,2] = " 2 ") entao
      vetnum [0,2] <- (" X ")
   senao
      se (op = 3) e  (vetnum [0,4] = " 3 ") entao
         vetnum [0,4] <- (" X ")
      senao
         se (op = 4) e  (vetnum [2,0] = " 4 ") entao
            vetnum [2,0] <- (" X ")
         senao
            se (op = 5) e (vetnum [2,2] = " 5 ") entao
               vetnum [2,2] <- (" X ")
            senao
               se (op = 6) e (vetnum [2,4] = " 6 ") entao
                  vetnum [2,4] <- (" X ")
               senao
                  se (op = 7) e (vetnum [4,0] = " 7 ") entao
                     vetnum [4,0] <- (" X ")
                  senao
                     se (op = 8) e (vetnum [4,2] = " 8 ") entao
                        vetnum [4,2] <- (" X ")
                     senao
                        se (op = 9) e (vetnum [4,4] = " 9 ") entao
                           vetnum [4,4] <- (" X ")
                        senao
                           escreval ("Opção inválida")
                           leia (op)
                           posicaox ()
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse
fimse
//---------------------------------------------------------------

fimprocedimento


// Vetor onde o O ira ficar
procedimento posicaoo ()
var
inicio
se (op = 1)  e (vetnum [0,0] = " 1 ") entao
   vetnum [0,0] <- (" O ")
senao
   se (op = 2)  e (vetnum [0,2] = " 2 ") entao
      vetnum [0,2] <- (" O ")
   senao
      se (op = 3)  e (vetnum [0,4] = " 3 ") entao
         vetnum [0,4] <- (" O ")
      senao
         se (op = 4) e (vetnum [2,0] = " 4 ") entao
            vetnum [2,0] <- (" O ")
         senao
            se (op = 5)  e (vetnum [2,2] = " 5 ") entao
               vetnum [2,2] <- (" O ")
            senao
               se (op = 6)  e (vetnum [2,4] = " 6 ") entao
                  vetnum [2,4] <- (" O ")
               senao
                  se (op = 7) e (vetnum [4,0] = " 7 ") entao
                     vetnum [4,0] <- (" O ")
                  senao
                     se (op = 8) e (vetnum [4,2] = " 8 ") entao
                        vetnum [4,2] <- (" O ")
                     senao
                        se (op = 9) e (vetnum [4,4] = " 9 ") entao
                           vetnum [4,4] <- (" O ")
                        senao
                           escreval ("Opção inválida")
                           leia (op)
                           posicaoo ()
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse
fimse
//---------------------------------------------------------------

fimprocedimento


// Teste de vitória
procedimento vitoria ()
inicio

//horizontal
se (vetnum [0,0] = vetnum[0,2]) e (vetnum [0,2] = vetnum [0,4]) entao
   vit <- "s"
senao
   se (vetnum [2,0] = vetnum[2,2]) e (vetnum [2,2] = vetnum [2,4]) entao
      vit <- "s"
   senao
      se  (vetnum [4,0] = vetnum[4,2]) e (vetnum [4,2] = vetnum [4,4]) entao
         vit<- "s"
      senao
         //vetical
         se  (vetnum [0,0] = vetnum[2,0]) e (vetnum [2,0] = vetnum [4,0]) entao
            vit<- "s"
         senao
            se  (vetnum [0,2] = vetnum[2,2]) e (vetnum [2,2] = vetnum [4,2]) entao
               vit<- "s"
            senao
               se  (vetnum [0,4] = vetnum[2,4]) e (vetnum [2,4] = vetnum [4,4]) entao
                  vit<- "s"
               senao
                  //diagonal
                  se  (vetnum [0,0] = vetnum[2,2]) e (vetnum [2,2] = vetnum [4,4]) entao
                     vit<- "s"
                  senao
                     se  (vetnum [0,4] = vetnum[2,2]) e (vetnum [2,2] = vetnum [4,0]) entao
                        vit<- "s"
                     senao
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimse
fimse

fimprocedimento



inicio

design ()


//Jogadas e exibição do resultado

escreval ("   -------------")
escreval("   Jogador 1 = X")
escreval("   Jogador 2 = 0")
escreval ("  ---------------")

vit <- "n"
repita

   jog1 ()
   posicaox ()
   jogo ()
   vitoria ()
   cont<- cont+1

   se (vit = "s") entao
      escreval
      escreval
      escreval ("  ¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶")
      escreval ("  ¶¶¶´´´´´¶¶´´¶¶´´¶¶¶¶´´¶¶¶")
      escreval ("  ¶¶¶´´¶¶¶¶¶¶¶¶¶´´´¶¶´´´¶¶¶")
      escreval ("  ¶¶¶´´´´¶¶¶´´¶¶´´´´´´´´¶¶¶")
      escreval ("  ¶¶¶´´¶¶¶¶¶´´¶¶´´¶´´¶´´¶¶¶")
      escreval ("  ¶¶¶´´¶¶¶¶¶´´¶¶´´¶¶¶¶´´¶¶¶")
      escreval ("  ¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶")
      escreval ("     Jogador 1 venceu")
   fimalgoritmo
fimse

se (cont = 9) entao
   escreval
   escreval
   escreval ("  ¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶")
   escreval ("  ¶¶¶´´´´´¶¶´´¶¶´´¶¶¶¶´´¶¶¶")
   escreval ("  ¶¶¶´´¶¶¶¶¶¶¶¶¶´´´¶¶´´´¶¶¶")
   escreval ("  ¶¶¶´´´´¶¶¶´´¶¶´´´´´´´´¶¶¶")
   escreval ("  ¶¶¶´´¶¶¶¶¶´´¶¶´´¶´´¶´´¶¶¶")
   escreval ("  ¶¶¶´´¶¶¶¶¶´´¶¶´´¶¶¶¶´´¶¶¶")
   escreval ("  ¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶")
   escreval ("         Ninguém Venceu")
fimalgoritmo
fimse


jog2 ()
posicaoO ()
jogo ()
vitoria ()
cont<- cont+1

ate (vit <> "n")


escreval
escreval
escreval ("  ¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶")
escreval ("  ¶¶¶´´´´´¶¶´´¶¶´´¶¶¶¶´´¶¶¶")
escreval ("  ¶¶¶´´¶¶¶¶¶¶¶¶¶´´´¶¶´´´¶¶¶")
escreval ("  ¶¶¶´´´´¶¶¶´´¶¶´´´´´´´´¶¶¶")
escreval ("  ¶¶¶´´¶¶¶¶¶´´¶¶´´¶´´¶´´¶¶¶")
escreval ("  ¶¶¶´´¶¶¶¶¶´´¶¶´´¶¶¶¶´´¶¶¶")
escreval ("  ¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶")
escreval ("      Jogador 2 venceu")

fimalgoritmo
