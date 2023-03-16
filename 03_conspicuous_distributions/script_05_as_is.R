?Binomial
?Normal
(mi<-5E3)
(sigma<-900)

# P(X>5000), X ~ N (mi, sigma^2):
1-pnorm(5000,mi,sigma)

# Mediana dunha normal:
qnorm(.5,mi,sigma)
qnorm(.5)

# Densidade de X
f<-function(x){
  exp( -.5*((x-mi)/sigma)^2) / sqrt(sigma^2*2*pi)
}
f(3000)
dnorm(3000,mi,sigma)


# Método de Monte-Carlo
R<-1E6
set.seed(12)
x<-rnorm(R,mi,sigma)
x>5000
sum(x>5000)/R
1/sqrt(R)
mean(x>5000)
as.numeric(c(T,T,F,F))

# Predef
LETTERS
letters
ls()
getwd()
dir()

# Datos 2023
D<-read.table("Datos_2023.txt",header=T)
head(D)
attach(D)
Estatura
?write.table

# Frecuencias
(ni<-table(Zapato,Irmans))
N<-nrow(D);N
length(Estatura)
(fi<-ni/N)
round(fi,4)
ni<-table(Zapato)
ni
(Ni<-cumsum(ni))


?is.element
?intersect
?union

Deporte<-factor(Deporte)
pie(ni,col=rainbow(length(ni)))
barplot(ni,col=rainbow(length(ni)))
hist(Peso,main="Gráfica guai",xlab="Xe")
plot(Estatura,Peso,pch=2)
?par
