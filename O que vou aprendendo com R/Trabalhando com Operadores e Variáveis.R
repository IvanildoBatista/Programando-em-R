#Trabalhando com a linguagem R

## Operadores matemáticos em R

5+5 #soma
5-5 #subtração
5*5 #multiplicação
5/5 #divisão
5^2 #potência
5**5 #potência
17%%5 #módulo ou resto de uma divisão

## Operadores relacionais

#atribuindo valores a duas variáveis
a=7
b=5

a>8 #maior
a<8 #menor
a<=8 #menor ou igual
a>=8 #maior ou igual
a==8 #igual (comparação)
a!=8 #diferente

(a==8)&(b==6) #se a é igual a 8 E b igual a 6 (as duas devem ser verdadeiras)
(a==8)|(b>5)#se a é igual 8 OU b maior que 5 (pelo menos uma deve ser verdadeira)
print(!a>8) #negando um resultado anterior

## Tipos de dados

#dados numéricos
num=2.5 #variável com valor decimal
num

num2=4 #variável com valor inteiro
num2

x=-123 #variável com valor negativo
x
class(x)#verificando a classe da variável

is.integer(num2) #perguntando para o R se a variável é um inteiro
y=as.integer(num2) #transformando a variável em inteiro
class(y) #verificando a classe

x2 = 3.14
x2
y2=as.integer(3.14) #arredondando a variável
y2 #valor arredondado

as.integer('4.27') #também é possível arredondar string, desde que seus componen-
#tes sejam números

#atribuindo strings a valores
char1 = 'A'
char1
char2='bolha'
char2

#números complexos
compl = 2.5+4i
compl
class(compl)

#trabalhando com raiz quadrada
sqrt(-1) #não é possível tirar a raiz quadrada de um número negativo
sqrt(-1+0i) #mas é possível de um número complexo
sqrt(as.complex(-1))#é possível converter um número negativo para complexo
#e tirar sua raiz quadrada

##operadores lógicos

x=1;y=2
z=x>y
z #nessa variável lhe é atribuído um resultado lógico
class(z)

#também
u=TRUE; v=TRUE
class(u)
class(v)
u&v #usando operador and
u|v #usando operador or
!u #usando o operador not

## Variável

#atribuindo valor a uma variável

var1=367
var1
mode(var1)
sqrt(var1)

var2 = as.integer(var1)#atribuindo a uma variável outra variável, mas modificando
#o seu tipo para inteiro
var2
mode(var2) #modo de armazenamento é numeric
typeof(var2)#mas seu tipo é inteiro

var3 = c('seg','ter','qua') #atribuindo caracteres a uma variável
var3
mode(var3)

var4=function(x){x+3} #atribuindo uma função para uma variável
var4
mode(var4)

var5 = as.character(var1) #atribuindo outra variável, mas modificando o seu tipo
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

x[1]#verificando valor na posição 1
x[2]#verificando valor na posição 2
x[3]#verificando valor na posição 3


#listando todos os objetos
ls()
objects()


#removendo objeto
rm(x)
x


























