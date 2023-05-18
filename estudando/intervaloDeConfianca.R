#intervalo de confianã - variancia conhecida
#exemplo1
sd = 0.042
media = 0.824
n = 100
confLevel = 0.90
alfa = 0.10
# obter o intevalo de confianca
zc = qnorm(1-alfa/2,0,1)
zc = round(zc,2)
zc
erro = zc *sd/sqrt(n)
erro = round (erro,5)
erro
cat("[", media - erro, ",", media + erro, "]")

#exemplo 2 
var = 16
sd = sqrt(var)
n = 64
media = 5
alfa = 0.05
#obter intervalo conf
zc = qnorm(1 - alfa/2, 0, 1)
zc = round(zc, 2)
zc
erro = zc* sd / sqrt(n)
erro = round(erro,5)
erro
cat ( "[", media-erro ,",", media+erro, "]")

#exemplo 3
sd = 3
n = 18
media = 4.7
#a)
alfa = 0.02
zc = qnorm(1- alfa/2, 0, 1)
zc = round(zc,2)
zc
erro = zc*sd/sqrt(n)
erro = round(erro,2)
erro

cat ("[", media-erro, ",", media+erro, "]")
#b)
alfa= 0.1
zc = qnorm(1- alfa/2, 0, 1)
zc = round(zc,2)
zc
erro = zc*sd/sqrt(n)
erro = round(erro,2)
erro

cat ("[", media-erro, ",", media+erro, "]")

#variancia DESCONHECIDA 

#exemplo 4
valores <- c(90, 92, 92, 95, 98, 99, 100, 100, 100, 117)
#a) nivel de conf = 95%
alfa = 0.05
n = length(valores)
desvio = sd(valores)
media = mean(valores)

tc = qt(p =1-alfa/2, df = n-1)
tc = round(tc, 3)
tc

erro = tc*desvio / sqrt(n)
erro = round(erro,3)
erro

cat( "[", media-erro, ",", media+erro, "]")
t.test(valores, conf = 0.95)

#exemplo 6
#99 conf
valores <- c(10.49, 16.62, 17.30, 15.48, 12.97, 17.26, 13.40, 13.90,
             13.63 ,13.26, 14.37, 11.70, 15.47, 17.84 ,14.07, 14.76)

t.test(valores, conf= 0.99)

#exemplo 7
n = 75
alfa = 0.1
media = 227
desvio = 15
zc = qnorm((1-alfa/2), 0, 1)

ICinf = media - zc * desvio/sqrt(n)
ICsup = media + zc * desvio/sqrt(n)

cat("[", ICinf, ",", ICsup, "]")

#intervalo de confiança para PROPORÇÃO AMOSTRAL

#exemplo 10
n = 400
k = 80
prop.test(x = k, n, conf.level = 90/100)
#exemplo 11
#a)
n = 500
k = 100
prop.test(x = k, n = 500, conf.level = 95/100)
#b)
n = 1000
k = 300
prop.test(x= k, n = n, conf.level = 0.95)
#exemplo 12
k = 2500*0.60
n = 2500
prop.test(x = k,n, conf.level  =0.95)

#intervalo de confiança para a VARIANCIA
#exemplo 16
pesos<-c(98, 97, 102, 100, 98, 101, 102, 105, 95, 102, 100)
alfa = 0.05
s2<- var(pesos)
n<-length(pesos)

Q1 <- qchisq(1-alfa/2, n-1)
Q1 =round(Q1, 5)

Q2 <- qchisq(alfa/2, n-1)
Q2 =round(Q2, 5)

cat ("[", (n-1)*s2/Q1, ",", (n-1)*s2/Q2, "]")

#exemplo 17
#Se uma amostra de tamanho 20, 
#a média e o desvio padrão são X=1,25 e s=0,25. Construir
#um intervalo de confiança para de 99% para sd^2

n = 20
s2 = 0.25^2
alfa  =0.01
Q1 = qchisq(1-alfa/2, n-1)
Q1
Q2 = qchisq(alfa/2, n-1)
Q2
cat("[", (n-1)*s2/Q1, ",", (n-1)*s2/Q2, "]")
