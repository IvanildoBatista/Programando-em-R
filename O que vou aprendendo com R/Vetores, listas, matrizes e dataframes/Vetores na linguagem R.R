## Trabalhando com vetores

##Criando vetores

#vetores de caracteres
vetor_caracter = c('Ivanildo','Batista')
vetor_caracter
class(vetor_caracter)#verificando a classe do vetor

#vetores num�ricos
vetor_numerico = c(1.8,4.3,300.5)
vetor_numerico
class(vetor_numerico)#verificando a classe do vetor

#Vetores complexo
vetor_complexo = c(5.2+3i,3.8+4i)
vetor_complexo
class(vetor_complexo)#verificando a classe do vetor

#vetores l�gicos
vetor_logico = c(TRUE, FALSE, TRUE, TRUE, FALSE, FALSE)
vetor_logico
class(vetor_logico)#verificando a classe do vetor

#vetores inteiros
vetor_inteiro = c(2,4,6)
vetor_inteiro
class(vetor_inteiro) #verificando a classe do vetor

##utilizando seq() para criar vetores

vetor1 = seq(1:10)
vetor1
class(vetor1)#verificando a classe do vetor

##utilizando rep() para criar vetores
vetor2 = rep(1:10)
vetor2
class(vetor2)#verificando a classe do vetor

## Indexa��o em vetores

a = c(1,2,3,4,5)
a
a[1] #verificando valor na posi��o 1 no vetor
a[2] #verificando valor na posi��o 2 no vetor
a[3] #verificando valor na posi��o 3 no vetor
a[4] #verificando valor na posi��o 4 no vetor
a[5] #verificando valor na posi��o 5 no vetor
a[6] #verificando valor na posi��o 6 no vetor
#esse �ltimo retornar� um valor NA.

b=c('Ci�ncia','de','Dados','Economia','Log�stica')

b[1] #verificando valor na posi��o 1 no vetor
b[2] #verificando valor na posi��o 2 no vetor
b[3] #verificando valor na posi��o 3 no vetor
b[4] #verificando valor na posi��o 4 no vetor
b[5] #verificando valor na posi��o 5 no vetor
b[6] #verificando valor na posi��o 6 no vetor
#esse �ltimo retornar� um valor NA.

##Combinando vetores
#usarei os vetores criados anteriomente

c(a,b) #ele transforma os valores num�ricos em strings


##Opera��o com vetores

x = c(24,36,85,54,69)
y = c(3,5,5,8,6)

x*5 #muktiplicando um vetor por uma constante, todos os valores nesse vetor ser�o
#multiplicados pela constante

x+y #somando vetores, ser�o somados os valores conforme a indexa��o

x-y #subtraindo vetores, ser�o subtra�dos os valores conforme a indexa��o

x*y #multiplicando vetores, ser�o multiplicados os valores conforme a indexa��o

x/y #dividindo vetores, ser�o divididos os valores conforme a indexa��o

#somando vetores com quantidades de elementos diferentes
alfa = c(10,20,30)
beta = c(1,2,3,4,5,6,7,8,9)
alfa+beta #somar� os valores conforme a indexa��o

##Vetor nomeado
v=c('Barack','Obama') #criando um vetor de strings
v #imprimindo o vetor

names(v) = c('Nome','Sobrenome') #atribundo a cada valor um nome de coluna
v #imprimindo novamente o vetor
v['Nome'] #imprimindo o valor da coluna Nome
v['Sobrenome'] #imprimindo o valor da coluna Sobrenome
