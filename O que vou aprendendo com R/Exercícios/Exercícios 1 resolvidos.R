#Exerc�cios de introdu��o ao R

#Exerc�cio 1 - Crie um vetor com 12 n�meros inteiros

vetor1 = c(1:12)
vetor1

class(vetor1)

# Exerc�cio 2 - Crie uma matriz com 4 linhas e 4 colunas preenchida 
#com n�meros inteiros

matriz1 = matrix(c(1:16),nr=4)
matriz1

class(matriz1)

# Exerc�cio 3 - Crie uma lista unindo o vetor e matriz criados anteriormente

lista1 = list(vetor1,matriz1)
lista1

# Exerc�cio 4 - Usando a fun��o read.table() leia o arquivo do link
#abaixo para uma dataframe
# http://data.princeton.edu/wws509/datasets/effort.dat

dataframe1 = 
  data.frame(read.table('http://data.princeton.edu/wws509/datasets/effort.dat'))
dataframe1

View(dataframe1)

# Exerc�cio 5 - Transforme o dataframe anterior, em um dataframe nomeado 
#com os seguintes labels:   # c("config", "esfc", "chang")

names(dataframe1) = c("config", "esfc", "chang")
dataframe1

# Exerc�cio 6 - Imprima na tela o dataframe iris, verifique quantas 
#dimens�es existem no dataset

View(iris) #visualizando dataframe
dim(iris) #dimens�o 150 x 5

# Exerc�cio 7 - Crie um plot simples usando as duas primeiras 
#colunas do dataframe iris

plot(iris$Sepal.Length,iris$Sepal.Width)

# Exerc�cio 8 - Usando a fun��o subset, crie um novo dataframe com o conjunto 
#de dados do dataframe iris em que Sepal.Length > 7
# Dica: consulte o help para aprender como usar a fun��o subset()

subset(iris, Sepal.Length>7)
  
?subset
help(subset)

# Exerc�cios 9 - Crie um dataframe que seja c�pia do dataframe iris e 
#usando a fun��o slice(),divida o dataframe em um subset de 15 linhas
# Dica 1: voc� vai ter que instalar e carregar o pacote dplyr
# Dica 2: consulte o help para aprender como usar a fun��o slice()

install.packages('dplyr')
library(dplyr)

iris2 = iris #criando novo dataframe
iris2

?slice

slice(iris2, 15L)

# Exerc�cios 10 - Use a fun��o filter no seu novo dataframe criado no item 
#anterior e retorne apenas valores em que Sepal.Length > 6
# Dica: use o RSiteSearch() para aprender como usar a fun��o filter

filter(iris2, 'Sepal.Length' > 6)