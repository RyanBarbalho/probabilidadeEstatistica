#primeira questao A
enemData <- read.csv("ENEM.csv",TRUE, sep = ",", dec = ".")
marechalData <- subset(enemData, enemData$NO_MUNICIPIO_RESIDENCIA=="Marechal Deodoro")

notaN <-c(marechalData$NU_NOTA_CN)
notaH <-c(marechalData$NU_NOTA_CH)
notaM <-c(marechalData$NU_NOTA_MT)
notaL <-c(marechalData$NU_NOTA_LC)
notaR <-c(marechalData$NU_NOTA_REDACAO)
notaE <-c(marechalData$NU_NOTA_ENEM)

boxplot(notaN,notaH,notaL,notaM,notaR,notaE,
        main="RELACAO DE NOTAS DO ENEM",
        names=c("Natureza","Humanas","Linguagens","Matematica"
                ,"Redaçao","Nota Geral"),
        col=c("red","blue","purple","green","yellow","violet"))

#analise dos dados =>
#matematica e redaçao sao as notas com maior media, s
#matematica possuindo variaçao de boas notas em relaçao as outars materias
#as provas de linguagem e humanas possuem maior variaçao negativa
#provavelmente devido ao deficit de aprendizado de interpretaçao de texto
#e redaçao possui variaçao mais volatile assim como humanas, possui variaçao negativa