#atlernativa d da primeira questao
#Escolher duas variáveis (colunas), sendo uma qualitativa
#e outra quantitativa,
#gera gráficos de barras de pizza e interpretar os resultados.
enemData <-read.csv("enem.csv",sep=",",dec=".")
marechalData <-subset(enemData,enemData$NO_MUNICIPIO_RESIDENCIA=="Marechal Deodoro")
#dado e nota de redaçao e escola 
notaRed <-c(marechalData$NU_NOTA_REDACAO)
notaRed
#definir quantiles
quartis <- quantile(notaRed)
#classificar de acordo com os quantiles
notaRed.cut <-cut(notaRed,breaks = quartis,include.lowest=TRUE)


#dado escola
escolaData <-(marechalData$TP_ESCOLA)
classesEscola <-c("publica","particular")

#agora tabela com frequencia absoluta
tabela <-table(escolaData,notaRed.cut)
tabela

#agora para o barplot
barplot(tabela,main="redaçao VS escolas", ylim = c(0,100),col = c(
  "#63C5DA","#0492C2"),legend.text = c("publica","particular"))
           
#a conclusao que tiramos é que as escolas particulares possuem,
#proporcionalmente um desempenho muito melhor na redaçao do ENEM