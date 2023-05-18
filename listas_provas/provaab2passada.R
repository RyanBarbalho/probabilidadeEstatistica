#prova passada ab2
#questao 1
install.packages("car")
library(car)
#a)
alfa = 0.01
desvio = 100
media = 820
n = 370

ZCritico = round(qnorm(1-alfa/2,0,1),2)
ZCritico

erro = (ZCritico*desvio)/sqrt(n)
erro
cat("(", media - erro, ",", media + erro, ")")

#b)

#questao 2

x <- c(127, 126, 126, 124, 123, 122, 128,
       125, 128, 124, 127, 125, 120, 124, 124, 127, 125, 128, 126, 105)
#a)
media = mean(x)
desvio = sd(x)
n = length(x)
tc = (media-127)/(desvio/sqrt(n))
tc
?qt()

t.test(x, mu= 127, conf.level = 0.99)
#t = -2.51
zc = qt(0.01/2,n-1)
zc = round(zc,2)
#b)
confLevel = 0.94
alfa = round(1-confLevel,2)
t.test(x,mu =127, conf.level = confLevel, alternative="greater")
#nesse caso o pvalor deu maior que alfa entao aceita a hipotese

#questao 3
#a)
x1 = c(45,51,50,62,43,42,53,50,48,55,30,25)
x2 = c(45,35,43,59,48,45,41,43,49,39,23,18)
diferenca = x1-x2
media = mean(diferenca)
dp = sd(diferenca)
n = length(x1)
t = media/dp/sqrt(n)
pvalor = 1-pt(t,df = n-1,lower.tail = FALSE)
pvalor
qt(0.96, df = 38)

var.test(x1,x2)

mu1= round(mean(x1),2)
mu2 = round(mean(x2),2)
desvio= (sed(x1))
tc = (5.5-0)/(sd(x1-x2)/sqrt(12))
tcritico = qt(0.04/2, 11)

t.test(x1,x2, mu=0, paired =TRUE, conf.level = 0.96, alternative = "greater")
#o p valor é menor que alfa, entao REJEITAMOS a hipotese nula
#pois tb fala q a mean difference é maior que 0, ou seja rejeita nula
y = x1-x2
tcritico = qt(0.04/2,11, lower.tail = FALSE)
tcritico
#b)

t.test(x1,x2,mu=0,paired = FALSE, conf.level = 0.95, alternative = "greater")

#questao 4
#a)matriz de correlações 
X <- c(11.2, 8.6, 11.0, 9.8, 11.0, 14.0, 6.0, 4.0, 12.0, 7.4, 10.8, 10.0)
Y <- c(9.5, 6.6, 7.6, 8.8, 8.3, 9.9, 7.25, 4.16, 10.8, 4.5, 8.25, 6.66)
Z <- c(8.25, 5.76, 7.7, 8.84, 8.47, 7.22, 5.75, 10.5, 5.5, 7.9, 6.58, 6.66)

matrizCOr = cor(data.frame(X,Y,Z))
matrizCOr
cor.test(X,Y, method = "pearson")
dado = data.frame(X,Y,Z)
modelo <- lm(Y ~ X, data = dado)
modelo
coeficientes <- coef(modelo)
coeficientes
a<- coeficientes[1]
b<- coeficientes[2]

equacao <- paste("y =", round(a,2), "+", round(b,2), "x")
print(equacao)

#c
residuos = residuals(modelo)
shapiro_rest = shapiro.test(residuos)
shapiro_rest

#4
#a)
locais <- read.csv("C:\\Users\\ryanz\\Downloads\\locais.csv")
locais

result<- aov(locais$Qte ~ locais$locais)
anova(result)

TukeyHSD(result)
qt(0.06, df=19, lower.tail = FALSE)
