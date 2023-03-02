getwd()
dir()
# https://duckduckgo.com/?q=%22computing+a+mean%22+%22in+r%22+site%3Astackexchange.com&t=ffab&ia=web
?mean
mean(c(1,2,3))
mean(1:3)
apropos("mean") # conteñen "mean" no nome

( xbarra<-mean(c(1.0,1.0,3.0)) )
round(xbarra,1)
round(xbarra) # redondeo
floor(xbarra) # truncamento
ceiling(xbarra)

v<-"bio estatística"
v
class(v)
is.character(v)
paste(v,"mola")
nchar(v)

x<-c(1,2,3) # 1:3
sum(x)
( x<-c(x,NA) )
sum(x)
?sum
sum(x,na.rm=T)
x<-c(1,2,3,14,-2,0)
cumsum(x)
x

p<-F
q<-T
!p
!q
p&q
p|q
xor(p,q)
p|p
q|q
xor(q,q)
any(p,p,p)
any(p,p,p,q)
all(q,q,q,F)
all(q,q,q,q,q,q,T)
a<-2;b<-3
a==2
a==a
a==b
a!=b
( aa<-2+1e-15  )
aa==a
class(a)
class(aa)
all.equal(a,aa)


( v<-0:9 )
seq(0,9)  
seq(0,9,by=1)   
seq(0,9,by=3)
seq(0,9,l=10)
seq(0,9,l=4)
rep(1,15)
(v<-rep(NA,15))
v[5]<-4
v
for(i in 1:15){
  v[i]<-i^3
}
v
?Control
# if(all.equal(3,3))cat("Hola.\n")
if(3!=3)cat("Hola.\n")
v<-v[1:4]
v
( w<-1:3 )
x<-c(v,w)
length(x)
round(mean(x),2)
round(sum(x)/length(x),2)


A<-matrix(1:4,ncol=2,nrow=2)
A
A[1,2]
A[1,2]<-3.1
A
A^2
#A%*%A

getwd()
dir()
D<-read.table("Datos.txt",header=T)
head(D)
?read.table
class(D[1,1])
class(D[1,4])
class(D)
D$Peso
D[[2]]
D[,2]
dim(D)
nrow(D)
ncol(D)
# attach(D)
# Peso
# detach(D)
# Peso

palette()
rainbow(100)
barplot(rep(1,8),col=rainbow(8),ylab="")
barplot(c(.5,.25,.8),col=rainbow(3),
        ylab="Eixe Y",main="Título",
        xlab="Eixe X")
pie(rep(1,8),col=rainbow(8),ylab="")
?par # parámetros gráficos


## Estatística descritiva ##
(x<-D$Estatura)
quantile(x)
?quantile
min(x)
max(x)
range(x)
c(min(x),max(x))
median(x)
IQR(x)
quantile(x,seq(0,1,by=.1)) # decís
quantile(x,(0:10)/10) # decís
quantile(x,(0:100)/100) # percentís
var(x) # cuasivarianza
( s2<-mean( (x-mean(x))^2 ) ) # Var
n<-length(x)
sum( (x-mean(x))^2 )/(n-1) # cuasivar
(n-1)*var(x)/n # Var
x
unique(x)
sort(x)


#### Frecuencias ####
names(D)
head(D)
tail(D)
attach(D)
Irm<-D[[3]]
ni<-table(Zapato,Irm)
ni
( fi<-round(ni/n,4) )
( ni<-table(Irm) )
( Ni<-cumsum(ni) )
( Fi<-round(cumsum(ni)/n,3) )
( fi<-ni/n )
( Fi<-cumsum(fi) )
?prop.table
?margin.table
?addmargins

class(Deporte)
Deporte
dep<-factor(Deporte)
dep

#### Distribución binomial ####
?Binomial
n<-10
p<-.25
# a) P{X>=2}
1-pbinom(1,n,p)
sum(dbinom(2:10,n,p))
# b) P{X=5}
dbinom(5,n,p)
# c) P{X<=3}
pbinom(3,n,p)

?Normal


