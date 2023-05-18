#questao 2 A
#Agrupar variáveis a sua escolha, como por exemplo notas e idade, ou notas e
#números de computadores, ou notas por estado civil ou por sexo, gere os
#gráficos que achar adequados e faça uma síntese dos resultados obtidos.

#serao selecionadas notas e idades
enemData <-read.csv("enem.csv",sep = ",", dec = ".")
arapiracaData <-subset(enemData,enemData$NO_MUNICIPIO_RESIDENCIA=="Arapiraca")

idades <-c(arapiracaData$NU_IDADE)
freq <-table(idades)
space <- seq(from = 16, to=44, by=7)
space
classes <-c("16-23", 
            "23-30", "30-37",
            "37-44")
classes
freqIdades<-table(cut(idades,breaks=space,include.lowest = TRUE,right=FALSE,
          labels=classes))
freqIdades

notaEnem <-c(arapiracaData$NU_NOTA_ENEM)

quantilNotas <- quantile(notaEnem)
quantilNotas
nota.cut<-cut(notaEnem, breaks = quantile(notaEnem), include.lowest = TRUE)
nota.cut
FreqIdades

freqNotas <- table(nota.cut)
freqNotas

#frequenciatotal
tudao<-with(arapiracaData,freqIdades,nota.cut)
length(freqIdades)
length(freqNotas)
plot(x=notaEnem,y=idades,type = "h", col="#0492C2")

#como é possivel ver pelos dados apresentados, a maior quantidade de pessoas que fizeram
#enem em arapiraca estao abaixo de 20 anos, assim como as maiores notas da cidade

