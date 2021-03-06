#Objetos na linguagem R

#Tudo na linguagem R � um objeto e os principais objetos s�o: vetores, matrizes,
#listas, dataframes e fun��es.

##VETORES - possuem uma dimens�o e um tipo de dado

vetor1=c(1:10)#criando um vetor
vetor1 #imprimindo um vetor
length(vetor1) #verificando o comprimento do vetor
mode(vetor1)
class(vetor1)
typeof(vetor1)


## MATRIZES - possuem duas dimens�es e um tipo de dado

matriz1 = matrix(1:10, nrow = 2) #criando uma matriz
matriz1 #imprimindo a matriz
length(matriz1) #verificando o comprimento da matriz
mode(matriz1)
class(matriz1)
typeof(matriz1)

## ARRAY - possui duas ou mais dimens�es e um tipo de dado

array1 = array(1:5, dim = c(3,3,3)) #criando um array
array1 #imprimindo um array
mode(array1)
class(array1)
typeof(array1)

## DATAFRAMES - � uma matriz com diferentes tipos de dados

View(iris)#visualizando o dataframe iris
length(iris)#verificando o comprimento dessa base de dados
mode(iris)
class(iris)
typeof(iris)

## LISTAS - Cole��o de diferentes objetos

lista1 = list(a = matriz1, b=vetor1) #criando uma lista
lista1 #imprimindo a lista
length(lista1) #verificando a quantidade de elementos de uma lista
mode(lista1)
class(lista1)
typeof(lista1)

##FUN��ES

#criando uma fun��o

func1 = function(x){
  var1 = x*x
  return(var1)
}

func1(5)#inserindo um valor na fun��o e ser� gerado o resultado
class(func1)

## REMOVENDO OBJETOS

objects() #imprimindo todos os objetos

rm(array1, func1) #removendo o array e a fun��o que foram criados

objects()#verificando se o array e a fun��o foram removidos