#Trabalhando com estruturas de controle IF, ELSE, FOR e WHILE

#IF-ELSE

x=25#definido uma variável

##se x for menor que 30, imprimir a frase em chaves
if (x<30)
{"Este número é menor que 30"}

#ou

if (x<30)
  "Este número é menor que 30"

#ELSE seria o "caso contrário" ou o "senão":

if(x<7){
  "Este número é menor que 7"
}else{
  "Este número é não é menor que 7"
}

#Comandos aninhados
x=7

if (x<7){
  "Este número é menor que 7"
}else if (x==7){
  "Este número é o 7"
}else{
  "Este número não é menor que 7"
}

#IFELSE

x=5

ifelse(x<6, "Correto!",NA) #vai imprimir a mensagem

x = 9

ifelse(x<6, "Correto!", NA) #não vai imprimir a mensagem

#IFELSE aninhados

x = c(5,6,4)

ifelse(x<5, "menor que 5",
       ifelse(x==5,"Igual a 5",'Maior que 5'))

#Dentro de funções

func1 = function(x,y){
  ifelse(y<7, x+y, 'Não encontrado')
}

func1(4,2) #vai somar os valores, pois x é menor que 7
func1(40,7) #não vai somar os valores, pois x é maior que 7

#Função rep()

rep(rnorm(10),5) #vai repetir os 10 valores gerados pela distribuição normal 5x

#Função repeat()
# a partir de um valor inicial (x=1) vai fazer o processo várias vezes até 
#chegar no valor de parada, que no nosso caso é 99
x=1

repeat{
  x=x+3
  if(x>99)
    break
  print(x)
}

#LOOP FOR

for (i in 1:20){print(i)} #dados os valores dentro do intervalo, todos serão
#impressos

for (q in rnorm(10)){print(i)} #imprimir todos os 10 valores gerados pela distri-
#buição normal

#ignorando elementos de um loop
for(i in 1:20){
  if(i==13 | i==15)
    next
  print(i)
} #imprimir todos os valores, mas com exceção dos valores 13 e 15

#Interromper loop
for(i in 1:22){
  if(i==13)
    break
  print(i)
} #dos elementos dos intervalos, quando chegar em 12 a impressão do valores irá
#parar

#LOOP WHILE

x=1

while(x<5){
  x=x+1
  print(x)
} #imprimir valores menores iguais a 5

#quando o while não será implementado
y = 6

while(y<5){
  y=y+10
  print(y)
}# não vai funcinar, pois y deve ser menor que 5, porém é igual a 6
#em um loop while sempre lembrar de colocar o mecanismo de interrompimento
#para o loop não ficar sendo gerado infinitamente.






































