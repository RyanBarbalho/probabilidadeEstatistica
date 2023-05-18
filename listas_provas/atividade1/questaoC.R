#questao c
#Escolher duas variáveis (colunas) qualitativas, 
#gerar gráficos adequados e
#interpretar os resultados.

enemData <- read.csv("enem.csv",TRUE,sep=",",dec=".")
marechalData <- subset(enemData,enemData$NO_MUNICIPIO_RESIDENCIA=="Marechal Deodoro")

escolaridade<-(marechalData$TP_ESCOLA)
escolaridade
classesEscola<-c("pública","privada")
frequencia<-table(escolaridade)
frequencia


barplot(frequencia,main="Tipos de escola de marechal",legend.text = classesEscola,
        names.arg = classesEscola,col = c("#33ff66", "cyan"))

sexo2<-(marechalData$TP_SEXO)
sexo2
classesSexo<-c("Feminino","Masculino")
frequenciaSexo<-table(sexo2)
frequenciaSexo
?pie()
pie(frequenciaSexo,clockwise = FALSE,main="sexo ENEM",labels=classesSexo,
    col = c("#FF1699","Sky Blue"),border="white")

#analise bivariada 
?with()
frequenciaTotal <- with(marechalData,table(sexo2,escolaridade))
frequenciaTotal
?barplot
barplot(t(frequenciaTotal),legend.text =c("publica","particular"),
        main = "SEXO escolaridade ENEM",ylim=c(0,150),col = c(
          "#63C5DA","#0492C2"))
                   #conclusao do primeiro grafico:
#em marechal, a GRANDE maioria é de escolas públicas
#conclusao do segundo grafico:
#o enem possui uma desigualdade relativamente pequena, porem é notavel
#que a popuaçao masculina das escolas de marechal deodoro faz menos ENEM.