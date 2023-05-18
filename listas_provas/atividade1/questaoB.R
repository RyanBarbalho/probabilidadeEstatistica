#questao B
#agrupe os dados em seus respectivos quartis
##fazer tabela das frequencias absolutas e relativas
#e suas respectivas acumuladas
#gerar histograma e comentar resultado


enemData <- read.csv("ENEM.csv",TRUE, sep = ",", dec = ".")
marechalData <- subset(enemData,enemData$NO_MUNICIPIO_RESIDENCIA=="Marechal Deodoro")

notaENEM <-c(marechalData$NU_NOTA_ENEM)

#agrupar em quartis para a media final
#   limitesQuartis <- c(0,200,400,600,800,1000)
#difQuartis = 0
#   for (i in 1:4){
#      difQuartis[i] = limitesQuartis[i+1] - limitesQuartis[i]
#   }
#verificar a amplitude de notas
#    range(notaENEM)
#verificar a quantidade necessaria de classes
#    nclass.Sturges(notaENEM)


#criar tabela de frequencia com classes
#o metodo sturges definiu que deveriam ser 9 classes, porem
#na atividade perde quartis entao serao 4
#definindo as labels

classes <-c("entre 318 e 417.75","entre 417.75 e 571.5",
            "entre 571.5 e 617.25", "entre 617.25 e 717")

#frequencia absoluta
frequencia <-table(cut(notaENEM,seq(318,717,l =5),labels = classes))
frequencia
#frequencia absoluta acumulada
frequenciaAcum <- cumsum(frequencia)
frequenciaAcum

#frequencia relativa
freqRelativa <- prop.table(frequencia)
freqRelativa

#tornando os valores da frequencia relativa mais legiveis
freqRelativa = round(freqRelativa*100,digits = 2)
freqRelativa
#frequencia relativa acumulada
freqRelAcum <- cumsum(freqRelativa)
freqRelAcum

#tabela com todos os dados
tabelaMediaEnem = cbind(frequencia,frequenciaAcum,freqRelativa,freqRelAcum)
tabelaMediaEnem 

#histograma
hist(notaENEM, breaks = 3,main="notas do gerais do enem",
     xlim = c(200,800),col = c("blue","red","green",
      "orange","violet"),xlab="nota geral",ylab="frequência")

#comentario:
#atraves da analise dos dados apresentados, podemos ver que a maior frequencia
#de notas é entre 400 e 600, que para variedade de notas de coret dos cursos 
#oferecidos pelas universidades publicas, são baixas e mostrasse necessario
#uma melhora no ensino medio acessado pela população de marechal deodoro

