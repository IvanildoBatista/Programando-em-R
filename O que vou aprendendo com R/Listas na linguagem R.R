#Trabalhando com Listas
#são generalizações de vetores e usa-se a função list() para criá-las

#criando vários tipos de listas
lista_caracter=list('A','Olá','Estatística')
lista_caracter #lista de caracteres

lista_inteiros=list(1,2,3,4)
lista_inteiros #lista de números inteiros

lista_numerico=list(1.90,45.3,300.5)
lista_numerico #lista de número não inteiros

lista_complexos=list(5.2+3i, 2.4+8i)
lista_complexos #lista de números complexos

lista_logicos=list(TRUE, FALSE, FALSE)
lista_logicos #lista de booleanos

lista_composta=list('A',3,TRUE)
lista_composta #lista com tipos diferentes de elementos

lista1=list(1:10, c('Maria','José','Jesus'), rnorm(10))
lista1 #outra lista com tipos diferentes de elementos

# Slicing de listas

lista1[1]#primeiro elemento de uma lista
lista1[c(1,2)] #primeiro e segundo elemento de uma lista
lista1[2] #segundo elemento de uma lista
lista1[[2]][1]#primeira parte do segundo elemento de uma lista
lista1[[2]][1] = 'Mônica' #substituindo elementos de uma lista
lista1

#Nomeando elementos de uma lista
names(lista1) = c('inteiros','caracteres','numericos')

lista1

#outra forma
vec_num=1:4
vec_var=c('A','B','C','D')

lista2 = list(Numeros = vec_num, Letras=vec_var)
lista2

#nomeando diretamente
lista2 = list(elemento1 = 3:5, elemento2 = c(7.2,3.5))
lista2

#trabalhando com elementos específicos
names(lista1) = c('inteiros','caracteres','numericos') #renomeando a lista1
lista1 #verificando se houva a renomeação

#acessando elementos da lista pelo título
lista1$caracteres 
lista1$inteiros
lista1$numericos

#verificando o comprimento de cada elemento da lista
length(lista1$caracteres)
length(lista1$inteiros)
length(lista1$numericos)

#extraindo elemento específico dentro de cada nível da lista
lista1$caracteres[2]

#mode de cada elemento
mode(lista1$inteiros)
mode(lista1$caracteres)
mode(lista1$numericos)

#combinando listas
lista3 = c(lista1, lista2)
lista3

#transformando vetores em listas
v=c(1:3)
v

l = as.list(v)
l

#unindo elementos de uma lista
mat1 = matrix(1:4, nrow=2)
mat1
vec = c(1:9)
vec
lst = list(mat1, vec)
lst






































































