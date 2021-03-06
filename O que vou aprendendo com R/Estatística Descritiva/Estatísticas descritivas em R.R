# Script para trabalhar com estat�stica com a Linguagem R
# Esse script diz respeito ao cap�tulo 1 do livro Estat�stica para
#Cientistas de dados. A medida que cada comando � for executado ser�,
#o mesmo ser� explicado.

# Nesse cap�tulo s�o apresentados os tipos de dados (cont�nuos, discretos,
#categ�ricos, bin�rios e ordinais), estimativas de localiza��o ou posi��o,
#estimativas de variabilidade, distribui��o dos dados, correla��o e explora��o
#de vari�veis.

#Definindo diret�rio
setwd("/Users/junio")

#Verificando o diret�rio
getwd()

#Irei importar os dados
paises <- read.csv("C:/Users/junio/countries.csv")

# Visualizar a base de dados
paises

# Nomes das colunas da base de dados
colnames(paises)

# Primeiras linhas da base de dados
head(paises)

# �ltimas linhas da base de dados
tail(paises)

#N�mero de linhas
nrow(paises)

#N�mero de colunas
ncol(paises)

#tabela com os dados
str(paises)

# Irei trabalhar com a coluna 'Population' (popula��o)

View(paises[['Population']])

###########MEDIDAS DE POSI��O OU LOCALIZA��O#############

#A primeira medida que usarei � a m�dia, que nada mais � que a soma dos valores
# de todas as observa��es da coluna popula��o e dividido pelo n�mero de observa-
#��es (tamb�m pode ser chamada de m�dia aritm�tica simples). Uma desvantagem 
#dessa medida � que ela pode ser influenciada por valores extremos ou outliers.

mean(paises[['Population']])


# A pr�xima medida � a m�dia aparada, que nada mais � que a m�dia, por�m os valores 
#que se encontram ponta (extremos) s�o eliminado. Cabe a quem est� trabalhando com a
#base de dados que propor��o deve ser eliminada. Isso � bom diminuir a influ�ncia dos
#outliers.

#m�dia aparada 10%
mean(paises[['Population']],trim=0.1)
#m�dia aparada 20%
mean(paises[['Population']],trim=0.2)
#m�dia aparada 30%
mean(paises[['Population']],trim=0.3)

#podemos notar que a medida que o termo de apara��o aumenta, a m�dia diminui

# A pr�xima medida de localiza��o � a mediana, que � imune a outliers.

median(paises[['Population']])

#veja que a m�dia � maior que a m�dia aparada que � maior que a mediana.

###########MEDIDAS DE DISPERS�O#############
#S�o medidas de dispers�o os desvios (erros ou res�duos), a vari�ncia, desvio 
#padr�o, desvio mediano absoluto, percentis e o Intervalo Interquartil (IQR).

#O desvio � a diferen�a entre os valores observados e a estimativa de localiza��o
#usando a m�dia temos

desvios <- (paises[['Population']] - mean(paises[['Population']]))
resultados <- sum(desvios)/227
resultados

#Vari�ncia � a soma dos quadrados dos desvios divididos por n-1, onde n � o 
#n�mero de observa��es.
sum(desvios^2)/226

#desvio padr�o � a raiz quadrada da vari�ncia
resultados2 <- sum(desvios^2)/226
resultados2^0.5
#ou
sd(paises[['Population']])

# desvio mediano absoluto
mad(paises[['Population']])

#Intervalo Interquartil
IQR(paises[['Population']])

#O desvio padr�o e a vari�ncia s�o as medidas de dispers�o mais conhecidas, por�m s�o
#sens�veis a outliers

###################DISTRIBUI��O DOS DADOS #######################
#Em estat�stica, al�m de analisar as medidas de localiza��o e dispers�o, tamb�m � bom
#analisar como os dados est�o distribu�dos. Para isso existem outras m�tricas e ferra-
#mentas para analisar a distribui��o.

#Os percentis servem para gerar, tamb�m, os decis e os quantis. Irei gerar v�rios 
#quantis
quantile(paises$Population,p=c(0.05, 0.25, 0.5, 0.75, 0.9, 0.95))

#O Boxplot � um tipo de gr�fico que permite visualizar como est�o os principais
#quantis e se h� valores outliers nos dados

boxplot(paises$Population/1000000, ylab='Popula��o por milh�o')

#Tabela de frequ�ncia da popula��o por pa�s

breaks <- seq(from = min(paises$Population), to = max(paises$Population),
              length=228)
pop_freq <- cut(paises$Population, breaks = breaks, right=TRUE, include.lowest = TRUE)
table(pop_freq)

#Histograma � uma gr�fico usado para visualizar a distribui��o dos dados
#no nosso histograma gerado vemos que temos muitos dados concentrados a esquerda.
#N�o possui distribui��o normal.

hist(paises$Population, breaks = breaks)

#Tamb�m � poss�vel plotar o gr�fico com uma linha chamada KDE (estimativa de densidade)
#do Kernel. 

hist(paises$Population, freq=FALSE)
lines(density(paises$Population), lwd=1, col="blue")

hist(paises$Area..sq..mi.., freq=FALSE)
lines(density(paises$Area..sq..mi..), lwd=1, col="blue")

hist(paises$GDP....per.capita., freq=FALSE)
lines(density(paises$GDP....per.capita.), lwd=1, col="red")