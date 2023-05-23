valores <- c(0, 1, 2, 3, 4, 5)

# Definir as probabilidades correspondentes
probabilidades <- c(0.05, 0.15, 0.42, 0.2, 0.08, 0.1)

# Calcular a média de X
media <- sum(valores * probabilidades)

# Calcular a variância de X
variancia <- sum((valores - media)^2 * probabilidades)

variancia


#2)
probA <- 0.20
probB <- 0.3
probC <- 0.5

destruidoA <- 0.01
destruidoB <- 0.05
destruidoC <- 0.04

probDest<- (probA*destruidoA) + (probB*destruidoB) + (probC*destruidoC)
probDest
#b) destruido e enviado pra a
probtotal<-(probA*destruidoA)/probDest
probtotal*100

#3)
meta1<-0.6
meta2<-0.5
duasmetas <-0.2
#a)pelomenos uma

umaDas<- meta1+meta2 - duasmetas
umaDas*100
#b)se a 1 for 
prob<-duasmetas/meta1
prob*100

#4)
n = 20
menino = 8
menina = 12
#a) sortear menino
choose(menino,1) *choose(menina,3)/choose(n,4)
#b) no maximo uma menina
#quatro menino        3 menino           uma menina     
(choose(menino,4) + choose(menino,3) *choose(menina,1))/choose(n,4)

#c)
#um menino e uma menina
1- (choose(menino,4)+ choose(menina,4))/choose(n,4)

#5)
taxa = 5
#a) 5 clientes em 50 minutos
dpois(5, lambda = taxa/60*50)

#b)8 horas prob de mais de 22 clientes
#mais de
ppois(22, lambda = taxa*8, lower.tail = FALSE)

#6)20 bolas 1 a 20 prob da bola ser divisivel por 3 ou por 5
#izi da pra fazer por papel e caneta 
n = 20
div3 = c(3,6,9,12,15,18)
div5 = c(5,10,15,20)
d3=length(div3)
d5 = length(div5)
p3 = d3/n
p5 = d5/n
(p3+p5)
#7) estatistica 
url <- "C:\Users\ryanz\OneDrive\Área de Trabalho\faculdade\ProbabilidadeeEstatistica\listas_provas\AB1.csv"
sal <- read.csv("AB1.csv", header = TRUE, sep = ";", dec = ".")

