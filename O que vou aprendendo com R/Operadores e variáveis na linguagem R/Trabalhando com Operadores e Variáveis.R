#Trabalhando com a linguagem R

## Operadores matem�ticos em R

5+5 #soma
5-5 #subtra��o
5*5 #multiplica��o
5/5 #divis�o
5^2 #pot�ncia
5**5 #pot�ncia
17%%5 #m�dulo ou resto de uma divis�o

## Operadores relacionais

#atribuindo valores a duas vari�veis
a=7
b=5

a>8 #maior
a<8 #menor
a<=8 #menor ou igual
a>=8 #maior ou igual
a==8 #igual (compara��o)
a!=8 #diferente

(a==8)&(b==6) #se a � igual a 8 E b igual a 6 (as duas devem ser verdadeiras)
(a==8)|(b>5)#se a � igual 8 OU b maior que 5 (pelo menos uma deve ser verdadeira)
print(!a>8) #negando um resultado anterior

## Tipos de dados

#dados num�ricos
num=2.5 #vari�vel com valor decimal
num

num2=4 #vari�vel com valor inteiro
num2

x=-123 #vari�vel com valor negativo
x
class(x)#verificando a classe da vari�vel

is.integer(num2) #perguntando para o R se a vari�vel � um inteiro
y=as.integer(num2) #transformando a vari�vel em inteiro
class(y) #verificando a classe

x2 = 3.14
x2
y2=as.integer(3.14) #arredondando a vari�vel
y2 #valor arredondado

as.integer('4.27') #tamb�m � poss�vel arredondar string, desde que seus componen-
#tes sejam n�meros

#atribuindo strings a valores
char1 = 'A'
char1
char2='bolha'
char2

#n�meros complexos
compl = 2.5+4i
compl
class(compl)

#trabalhando com raiz quadrada
sqrt(-1) #n�o � poss�vel tirar a raiz quadrada de um n�mero negativo
sqrt(-1+0i) #mas � poss�vel de um n�mero complexo
sqrt(as.complex(-1))#� poss�vel converter um n�mero negativo para complexo
#e tirar sua raiz quadrada

##operadores l�gicos

x=1;y=2
z=x>y
z #nessa vari�vel lhe � atribu�do um resultado l�gico
class(z)

#tamb�m
u=TRUE; v=TRUE
class(u)
class(v)
u&v #usando operador and
u|v #usando operador or
!u #usando o operador not

## Vari�vel

#atribuindo valor a uma vari�vel

var1=367
var1
mode(var1)
sqrt(var1)

var2 = as.integer(var1)#atribuindo a uma vari�vel outra vari�vel, mas modificando
#o seu tipo para inteiro
var2
mode(var2) #modo de armazenamento � numeric
typeof(var2)#mas seu tipo � inteiro

var3 = c('seg','ter','qua') #atribuindo caracteres a uma vari�vel
var3
mode(var3)

var4=function(x){x+3} #atribuindo uma fun��o para uma vari�vel
var4
mode(var4)

var5 = as.character(var1) #atribuindo outra vari�vel, mas modificando o seu tipo
#para caracter
var5
mode(var5)

#atribuindo valores a objetos
x=c(4,5,6)
x

#ou

c(4,5,6) -> y
y

#ou 

assign('x',c(4.3,4,-2))
x

x[1]#verificando valor na posi��o 1
x[2]#verificando valor na posi��o 2
x[3]#verificando valor na posi��o 3


#listando todos os objetos
ls()
objects()


#removendo objeto
rm(x)
x