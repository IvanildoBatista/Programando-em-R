#FUN��ES ESPECIAIS

#Fun��o unlist(): reverte uma lista em um vetor

list1 = list(6,"b",15)#criando uma lista
list1
class(list1)

unlist(list1)
vec1 = unlist(list1)
class(vec1)

list2 = list(v1 = 6, v2 = list(381,2190),v3 = c(30,217))
list2

mean(unlist(list2)) #retirando a m�dia
round(mean(unlist(list2))) #arredondando o resultado anterior

#Fun��o DO.CALL(): aplica uma fun��o a todos os elementos

data=list()
N=100

for (n in 1:N){
  data[[n]]=data.frame(index = n, char = sample(letters,1),z=rnorm(1))
}

head(data)

do.call(rbind,data)

class(do.call(rbind,data)) #gera um dataframe

# LAPPLY() X DO.CALL()

y = list(1:3,4:6,7:9)
y

lapply(y, sum) #aplicou para cada elemento da lista
do.call(sum,y)#aplicou para todos os elementos da lista

#Usando o pacote plyr: usando uma fun��o desse pacote para fazer a mesma coisa
#que o DO.CALL()

install.packages('plyr')
library(plyr)

ldply(y,sum)

#Fun��o STRPLIT(): divide uma string

texto = "Esta � uma string"

strsplit(texto, "") #divindindo por letra
strsplit(texto, " ") #dividindo por palavra

dates = c('199-05-23','2001-12-30','2004-12-17')
temp = strsplit(dates, '-') #dividindo datas
temp
class(temp)

matrix(unlist(temp), ncol=3,byrow = TRUE) #criando uma matriz com as
#datas divididas

Names = c('Brin, Sergey','Page,Larry','Dorsey,Jack','Glass,Noah','Williams,Evan',
          'Stone,Riz')

cofounded = rep(c('Google','Twitter'),c(2,4)) #repetir uma quantidade de palavras
#de forma espec�fica
cofounded

temp = strsplit(Names,',')
temp

frase = 'Muitas vezes temos que repetir algo diversas vezes, mas � estranho 
repetir palavras v�rias vezes'

palavras = strsplit(frase, " ")[[1]]
palavras
unique(tolower(palavras)) #identificar palavras �nicas

antes = data.frame(attr = c(1,30,4,6),tipo = c("pao_e_agua","pao_e_agua2"))
antes

strsplit(as.character(antes$tipo),'_e_')

#Usando a fun��o STR_SPLIT_FIXED():

library(stringr) #chamando o pacote

str_split_fixed(antes$tipo,'_e_',2) #vai gerar uma matriz

depois = strsplit(as.character(antes$tipo),'_e_')
do.call(rbind,depois) #gera uma matriz

#Usando a fun��o SEPARATE():

library(dplyr)
library(tidyr)

antes %>%
  separate(tipo,c("pao","agua"),"_e_") #gera um datafram

#Operadores de atribui��o

vec = 1:4
vec2<-1:4 #tanto "=" quanto "<-" fazem a mesma coisa

class(vec)
class(vec2)

typeof(vec)
typeof(vec2)

mean(x=1:10)
x #d� um erro

mean(x<-1:10)
x #n�o d� um erro

#Cria��o de objetos

vetor1 = 1:4
vetor2 = c(1:4)
vetor3 = c(1,2,3,4)

class(vetor1)
class(vetor2)
class(vetor3) #a classe desse � diferentes dos anteriores

typeof(vetor1)
typeof(vetor2)
typeof(vetor3) #o typeof desse tamb�m � diferente

matriz1 = matrix(1:4,nr=2)
matriz2 = matrix(c(1:4),nr=2)
matriz3 = matrix(c(1,2,3,4),nr=2)

class(matriz1)
class(matriz2)
class(matriz3) #a classe de todos s�o iguais

typeof(matriz1)
typeof(matriz2)
typeof(matriz3) #para a terceira matriz, o typeof foi diferente