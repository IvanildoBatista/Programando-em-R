#Exercícios de introdução ao R

#Exercício 1 - Crie um vetor com 12 números inteiros

vetor1 = c(1:12)
vetor1

class(vetor1)

# Exercício 2 - Crie uma matriz com 4 linhas e 4 colunas preenchida 
#com números inteiros

matriz1 = matrix(c(1:16),nr=4)
matriz1

class(matriz1)

# Exercício 3 - Crie uma lista unindo o vetor e matriz criados anteriormente

lista1 = list(vetor1,matriz1)
lista1

# Exercício 4 - Usando a função read.table() leia o arquivo do link
#abaixo para uma dataframe
# http://data.princeton.edu/wws509/datasets/effort.dat

dataframe1 = 
  data.frame(read.table('http://data.princeton.edu/wws509/datasets/effort.dat'))
dataframe1

View(dataframe1)

# Exercício 5 - Transforme o dataframe anterior, em um dataframe nomeado 
#com os seguintes labels:   # c("config", "esfc", "chang")

names(dataframe1) = c("config", "esfc", "chang")
dataframe1

# Exercício 6 - Imprima na tela o dataframe iris, verifique quantas 
#dimensões existem no dataset

View(iris) #visualizando dataframe
dim(iris) #dimensão 150 x 5

# Exercício 7 - Crie um plot simples usando as duas primeiras 
#colunas do dataframe iris

plot(iris$Sepal.Length,iris$Sepal.Width)

# Exercício 8 - Usando a função subset, crie um novo dataframe com o conjunto 
#de dados do dataframe iris em que Sepal.Length > 7
# Dica: consulte o help para aprender como usar a função subset()

subset(iris, Sepal.Length>7)
  
?subset
help(subset)

# Exercícios 9 - Crie um dataframe que seja cópia do dataframe iris e 
#usando a função slice(),divida o dataframe em um subset de 15 linhas
# Dica 1: você vai ter que instalar e carregar o pacote dplyr
# Dica 2: consulte o help para aprender como usar a função slice()

install.packages('dplyr')
library(dplyr)

iris2 = iris #criando novo dataframe
iris2

?slice

slice(iris2, 15L)

# Exercícios 10 - Use a função filter no seu novo dataframe criado no item 
#anterior e retorne apenas valores em que Sepal.Length > 6
# Dica: use o RSiteSearch() para aprender como usar a função filter

filter(iris2, 'Sepal.Length' > 6)