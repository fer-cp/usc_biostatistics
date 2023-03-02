b<-77
asfhuaek<-"oseiafhjwgt"
ls()
rm(list=ls()) # Borro variables definidas

?Arithmetic
## Buscando axuda:
# https://duckduckgo.com/?q=how+to+compute+a+mean+in+r&t=ffab&ia=web
( m<-mean(c(3, 6, 7, 7, 12, 14, 19, 22, 24)) )
round(m) # redondeo
floor(m) # truncamento
ceiling(m) # parte enteira por exceso

#### Selección ####
?Control
p<-T
if(p)cat("p é certo.\n")
p<-F
if(p)cat("p é certo.\n")
if(p) cat("p é certo.\n")  else  cat("p é falso\n")
p<-T
if(p){
  cat("p é certo.\n")
  cat("Que si, que é certo.\n")
}else{
  cat("p é falso\n")
}

x<-78769
if(x>4){
  cat("x =",x,"\n")
  cat("x é grande.\n")
}else if(x==4){
  cat("x =",x,"\n")
  cat("x é catro.\n")
}else{
  cat("x =",x,"\n")
  cat("x é pequeno.\n")
}

#### Iteración definida (bucles) ####
( w<-rep(NA,10) )
for(i in 1:10){
  w[i]<-i^2
}
w

for(i in 1:10){
  w<-w+1
}
w

## Alternativa vectorial: ben!!
w<-1:10
( w<-w^2 )

#### Iteración indefinida ####
j<-0
while(j<90){
  j<-sample(1:100,1)
  print(j)
}

#### Saír dun bucle ####
for(i in 1:1000){
  j<-sample(1:100,1)
  if(j%%2==0)next # Pasa á seguinte iteración
  print(j)
  if(j>=90)break # Mayday
}

#### Funcións ####
f<-function(x)x^2
f(3)
f(1:10)

g<-function(x,y){
  return(x+y)
}
g(2,3)

g<-function(x,y,op="sumar"){
  if(op=="sumar"){
    return(x+y)
  }else if(op=="multiplicar"){
    return(x*y)
  }else{
    cat("ERRO FATAL. Operación non definida!!\n")
    return(NA)
  }
}
g(2,3,"sumar")
g(2,3)
g(2,3,"multiplicar")
g(2,3,"ufhakl")

