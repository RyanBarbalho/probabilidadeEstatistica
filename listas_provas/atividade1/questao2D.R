#questao2 alternativa D
#agora vamos a relação entre a nota de redação e o acesso a internet
#visando a relação ao facil acesso a informação no desenvolvimento
#da capacidade de redigir um texto

enemData<-read.csv("enem.csv",sep=",",dec=".")
arapiracaData<-subset(enemData,enemData$NO_MUNICIPIO_RESIDENCIA=="Arapiraca")

notaRed<-c(arapiracaData$NU_NOTA_REDACAO)
notaRed.cut<-cut(notaRed, breaks=quantile(notaRed),
                 include.lowest = TRUE)

internet<-c(arapiracaData$Q025)
classesInternet<-c("não","tem")
tabela<-table(internet,notaRed.cut)

barplot(tabela,main="Relação de acesso a internet X redação",
        col=c("cyan","red"),legend.text=classesInternet,horiz=FALSE,
        xlab = "nota em redação",density=60)
?barplot()
#como foi percebido no grafico gerado, de acordo com o acesso de internet
#as notas em redaçao tendem a aumentar.