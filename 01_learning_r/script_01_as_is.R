2+2
sum(2,2)
x<-4
getwd() # Obteño directorio traballo

## Intercambio dous valores de variables:
a<-0
b<-1
aux<-b
b<-a
a<-aux
b
a

## Saída por pantalla:
cat("x vale:",x)
print(paste("x vale: ",x))

## Axuda:
help(sum)
?sum
help.search("difference")
??difference
apropos("diff")
example(sum)

## R como calculadora:
?Arithmetic
2*3
2^3
2/3
10%/%7 # Cociente
10%%7  # Resto

## Tipos de variables/obxectos
(x<-4) # Asigno a x o valor 4 e o amoso por pantalla
class(x)
is.numeric(x)
as.character(x)