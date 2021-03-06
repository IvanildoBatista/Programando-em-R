# Script para trabalhar com estatística com a Linguagem R
# Esse script diz respeito ao capítulo 1 do livro Estatística para
#Cientistas de dados. A medida que cada comando é for executado será,
#o mesmo será explicado.

# Nesse capítulo são apresentados os tipos de dados (contínuos, discretos,
#categóricos, binários e ordinais), estimativas de localização ou posição,
#estimativas de variabilidade, distribuição dos dados, correlação e exploração
#de variáveis.

#Definindo diretório
setwd("/Users/junio")

#Verificando o diretório
getwd()

#Irei importar os dados
paises <- read.csv("C:/Users/junio/countries.csv")

# Visualizar a base de dados
paises

# Nomes das colunas da base de dados
colnames(paises)

# Primeiras linhas da base de dados
head(paises)

# Últimas linhas da base de dados
tail(paises)

#Número de linhas
nrow(paises)

#Número de colunas
ncol(paises)

#tabela com os dados
str(paises)

# Irei trabalhar com a coluna 'Population' (população)

View(paises[['Population']])

###########MEDIDAS DE POSIÇÃO OU LOCALIZAÇÃO#############

#A primeira medida que usarei é a média, que nada mais é que a soma dos valores
# de todas as observações da coluna população e dividido pelo número de observa-
#ções (também pode ser chamada de média aritmética simples). Uma desvantagem 
#dessa medida é que ela pode ser influenciada por valores extremos ou outliers.

mean(paises[['Population']])


# A próxima medida é a média aparada, que nada mais é que a média, porém os valores 
#que se encontram ponta (extremos) são eliminado. Cabe a quem está trabalhando com a
#base de dados que proporção deve ser eliminada. Isso é bom diminuir a influência dos
#outliers.

#média aparada 10%
mean(paises[['Population']],trim=0.1)
#média aparada 20%
mean(paises[['Population']],trim=0.2)
#média aparada 30%
mean(paises[['Population']],trim=0.3)

#podemos notar que a medida que o termo de aparação aumenta, a média diminui

# A próxima medida de localização é a mediana, que é imune a outliers.

median(paises[['Population']])

#veja que a média é maior que a média aparada que é maior que a mediana.

###########MEDIDAS DE DISPERSÃO#############
#São medidas de dispersão os desvios (erros ou resíduos), a variância, desvio 
#padrão, desvio mediano absoluto, percentis e o Intervalo Interquartil (IQR).

#O desvio é a diferença entre os valores observados e a estimativa de localização
#usando a média temos

desvios <- (paises[['Population']] - mean(paises[['Population']]))
resultados <- sum(desvios)/227
resultados

#Variância é a soma dos quadrados dos desvios divididos por n-1, onde n é o 
#número de observações.
sum(desvios^2)/226

#desvio padrão é a raiz quadrada da variância
resultados2 <- sum(desvios^2)/226
resultados2^0.5
#ou
sd(paises[['Population']])

# desvio mediano absoluto
mad(paises[['Population']])

#Intervalo Interquartil
IQR(paises[['Population']])

#O desvio padrão e a variância são as medidas de dispersão mais conhecidas, porém são
#sensíveis a outliers

###################DISTRIBUIÇÃO DOS DADOS #######################
#Em estatística, além de analisar as medidas de localização e dispersão, também é bom
#analisar como os dados estão distribuídos. Para isso existem outras métricas e ferra-
#mentas para analisar a distribuição.

#Os percentis servem para gerar, também, os decis e os quantis. Irei gerar vários 
#quantis
quantile(paises$Population,p=c(0.05, 0.25, 0.5, 0.75, 0.9, 0.95))

#O Boxplot é um tipo de gráfico que permite visualizar como estão os principais
#quantis e se há valores outliers nos dados

boxplot(paises$Population/1000000, ylab='População por milhão')

#Tabela de frequência da população por país

breaks <- seq(from = min(paises$Population), to = max(paises$Population),
              length=228)
pop_freq <- cut(paises$Population, breaks = breaks, right=TRUE, include.lowest = TRUE)
table(pop_freq)

#Histograma é uma gráfico usado para visualizar a distribuição dos dados
#no nosso histograma gerado vemos que temos muitos dados concentrados a esquerda.
#Não possui distribuição normal.

hist(paises$Population, breaks = breaks)

#Também é possível plotar o gráfico com uma linha chamada KDE (estimativa de densidade)
#do Kernel. 

hist(paises$Population, freq=FALSE)
lines(density(paises$Population), lwd=1, col="blue")

hist(paises$Area..sq..mi.., freq=FALSE)
lines(density(paises$Area..sq..mi..), lwd=1, col="blue")

hist(paises$GDP....per.capita., freq=FALSE)
lines(density(paises$GDP....per.capita.), lwd=1, col="red")