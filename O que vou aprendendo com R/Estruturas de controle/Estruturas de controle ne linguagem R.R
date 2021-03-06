#Trabalhando com estruturas de controle IF, ELSE, FOR e WHILE

#IF-ELSE

x=25#definido uma vari�vel

##se x for menor que 30, imprimir a frase em chaves
if (x<30)
{"Este n�mero � menor que 30"}

#ou

if (x<30)
  "Este n�mero � menor que 30"

#ELSE seria o "caso contr�rio" ou o "sen�o":

if(x<7){
  "Este n�mero � menor que 7"
}else{
  "Este n�mero � n�o � menor que 7"
}

#Comandos aninhados
x=7

if (x<7){
  "Este n�mero � menor que 7"
}else if (x==7){
  "Este n�mero � o 7"
}else{
  "Este n�mero n�o � menor que 7"
}

#IFELSE

x=5

ifelse(x<6, "Correto!",NA) #vai imprimir a mensagem

x = 9

ifelse(x<6, "Correto!", NA) #n�o vai imprimir a mensagem

#IFELSE aninhados

x = c(5,6,4)

ifelse(x<5, "menor que 5",
       ifelse(x==5,"Igual a 5",'Maior que 5'))

#Dentro de fun��es

func1 = function(x,y){
  ifelse(y<7, x+y, 'N�o encontrado')
}

func1(4,2) #vai somar os valores, pois x � menor que 7
func1(40,7) #n�o vai somar os valores, pois x � maior que 7

#Fun��o rep()

rep(rnorm(10),5) #vai repetir os 10 valores gerados pela distribui��o normal 5x

#Fun��o repeat()
# a partir de um valor inicial (x=1) vai fazer o processo v�rias vezes at� 
#chegar no valor de parada, que no nosso caso � 99
x=1

repeat{
  x=x+3
  if(x>99)
    break
  print(x)
}

#LOOP FOR

for (i in 1:20){print(i)} #dados os valores dentro do intervalo, todos ser�o
#impressos

for (q in rnorm(10)){print(i)} #imprimir todos os 10 valores gerados pela distri-
#bui��o normal

#ignorando elementos de um loop
for(i in 1:20){
  if(i==13 | i==15)
    next
  print(i)
} #imprimir todos os valores, mas com exce��o dos valores 13 e 15

#Interromper loop
for(i in 1:22){
  if(i==13)
    break
  print(i)
} #dos elementos dos intervalos, quando chegar em 12 a impress�o do valores ir�
#parar

#LOOP WHILE

x=1

while(x<5){
  x=x+1
  print(x)
} #imprimir valores menores iguais a 5

#quando o while n�o ser� implementado
y = 6

while(y<5){
  y=y+10
  print(y)
}# n�o vai funcinar, pois y deve ser menor que 5, por�m � igual a 6
#em um loop while sempre lembrar de colocar o mecanismo de interrompimento
#para o loop n�o ficar sendo gerado infinitamente.