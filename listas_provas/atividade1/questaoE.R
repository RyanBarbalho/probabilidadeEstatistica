#Escolher duas variáveis (colunas) quantitativas, calcular o coeficiente de
#correlação, gerar gráfico de dispersão, agrupar usando os quartis e
#interpretar os resultados

enemData <- read.csv("enem.csv",sep=",",dec=".")
marechalData <-subset(enemData,enemData$NO_MUNICIPIO_RESIDENCIA=="Marechal Deodoro")

notaRed <-c(marechalData$NU_NOTA_REDACAO)
notaRed

quartis <- quantile(notaRed)
quartis

notaRed.cut <-cut(notaRed,breaks = quartis, include.lowest = TRUE)

notaMat <-c(marechalData$NU_NOTA_MT)

quartis2 <- quantile(notaMat)
notaMat.cut <-cut(notaMat, breaks = quartis2, include.lowest = TRUE)

tabela <- table(notaRed.cut,notaMat.cut)
tabela
plot(notaMat ~ notaRed, data = marechalData)

plot(x = notaMat, y = notaRed)


cor(notaMat,notaRed, method = "kendall")

#como é possivel ver atraves do grafico de dispersao,
#existe uma relaçao direta entre as maiores notas
#e quem esta preparado para tirar as maiores notas em matematica
#tambem vai bem em redação, criando uma realçao proporcional entre as notas
#e pelo metodo de kendall o coeficiente de correlação é = 0.3717895
