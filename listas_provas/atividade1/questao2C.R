enemData <-read.csv("enem.csv",sep = ",", dec= ".")
arapiracaData <-subset(enemData,enemData$NO_MUNICIPIO_RESIDENCIA=="Arapiraca")

#Elabore gráficos que possam ilustrar as Nota Final com o número de
#computadores que o estudante tem em casa (atributo A024).

#valor quantitativa = nota final
notaFinal<-c(arapiracaData$NU_NOTA_ENEM)

#valor qualitativo = numero de computadores
computadores<-c(arapiracaData$Q024)
compClasses<-c("Não tem","tem um","tem dois","tem tres",
               "quatro ou mais")
notaFinal.cut<-cut(notaFinal,breaks=quantile(notaFinal,
                                              include.lowest = TRUE))

relation<-table(computadores,notaFinal.cut)
cores <-c("#63C5DA","#0492C2","red","purple","turquoise")

boxplot(main="relação entre nota final do enem e computadores em casa",
          notaFinal ~ computadores,names = compClasses, col=cores)
?boxplot()
#como é possivel identificar na no grafico gerado, na grande maioria
#das boas notas tiradas no enem, é notada a presença de, no minimo,
#um computador na casa dos candidatos