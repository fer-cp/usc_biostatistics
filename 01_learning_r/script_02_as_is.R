a<-0
a
b<-1
b
a<-1
a
b
a<-0
a
a<-b
a

#### Axuda ####
??logarithm
log(4)
exp(1)
mean(c(1,2))

### Tipos de obxectos ####
( a<-3 )
class(a)
is.numeric(a)
as.numeric(a)
#
a<-"Ola k ase"
class(a)
is.numeric(a)
is.character(a)
as.character(3)
paste("ola","k ase")
nchar(a) # 9
#
( a<-c(3,0,0) )
length(a)
a+a
a*a
a^3
#
( a<-matrix(c(1,2,3,4),nrow =2,ncol=2,byrow=T) )
#
T
F
a<-2;b<-4
a<b
a<=b
a==b
a!=b
a==a
identical(a,a)
all.equal(a,2*tan(pi/4))
#
( p<-T ); ( q<-F )
!p
!q
p|q # Alt Gr + 1
p&q # Shift + 6

#### Vectores ####
( v<-c(1,2,3,4) )
( v<-1:4 )
( v<-seq(1,4,by=1) )
?seq
( w<-c("can","gato") )
( x<-c(T,F,T) )
rep(v,3)
c(v,v,v)
# Indexación:
v
v[3]
v[5] # NA
is.na(v[5])
#NA==NA
#v[5]==NA
( v<-rep(NA,2) )
v[1]<-1
v[1]<-2
v

#### Saída por pantalla ####
a<-3
print(a)
a
cat("a vale:",a,"\na non vale 5")

#### Directorio de traballo ####
getwd()
# Session > Set WD > To source file location