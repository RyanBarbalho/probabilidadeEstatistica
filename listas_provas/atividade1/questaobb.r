#questao B
enemData <- read.csv("ENEM.csv",TRUE, sep = ",", dec = ".")
marechalData <- subset(enemData,enemData$NO_MUNICIPIO_RESIDENCIA=="Marechal Deodoro")

notaENEM <-c(marechalData$NU_NOTA_ENEM)
#agrupe os dados em seus respectivos quartis
##fazer frequencias absolutas e relativas e suas respectivas acumuladas
#gerar histograma e comentar resultado


#agrupar em quartis para a media final
