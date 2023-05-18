enemData <-read.csv("enem.csv",sep=",",dec = ".")
arapiracaData<-subset(enemData,enemData$NO_MUNICIPIO_RESIDENCIA=="Arapiraca")

#questao 2 B->verificar se ha correlaçao entre duas variaveis 
#quantitativas, nesse exemplo serao nota final e redaçao
notaRed <-c(arapiracaData$NU_NOTA_REDACAO)

notaFinal <-c(arapiracaData$NU_NOTA_ENEM)
#dividir notas de redaçao em quantis
notaRedDiv <-cut(notaRed,breaks=quantile(notaRed),include.lowest=TRUE)

#dividir notas finais em quantis
notaFinalDiv <-cut(notaFinal,breaks=quantile(notaFinal),include.lowest = TRUE)

plot(notaRed~notaFinal, data = arapiracaData)

#atraves da visualização do grafico gerado, podemos ver que 
#é imprescindivel que para se ter uma boa nota final no enem
#a nota de redação deve ser alta, inclusive a nota da redação tende
#a ser um pouco mais alta que a nota geral.
