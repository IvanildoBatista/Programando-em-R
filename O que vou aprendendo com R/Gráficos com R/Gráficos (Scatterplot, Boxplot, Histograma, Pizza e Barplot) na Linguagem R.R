# Gráficos na linguagem R (scatterplot, boxplot, histograma, pizza e barplot)

#Definindo os dados
set.seed(67)

x = rnorm(10,5,7)
y = rpois(10,7)
z = rnorm(10,6,7)
t = rpois(10,9)

# SCATTERPLOT
#criando o gráfico

plot(x,y, col=123, pch=10, main ="Multi scatterplot", col.main = 'red',cex.main=1.5,
     xlab='indep', ylab='depend')
points(z,t,col='blue',pch=4)#adicionando outros dados
points(y,t, col=777, pch=9) #adicionando mais dados
legend(-6,5.9,legend = c('Nível 1','Nível 2','Nível 3'), col=c(123,'blue',777), 
       pch=c(10,4,9), cex=0.65, bty='n')

#BOXPLOT
attach(sleep)

#criando o gráfico
sleepboxplot = boxplot(data=sleep, extra~group, main = "Duração do sono",
                       col.main = 'red', ylab="Horas",xlab='Droga')

means = by(extra, group, mean) #adicionando a média ao boxplot
points(means, col='red')

median = by(extra, group, median) #adicionando a mediana ao boxplot
points(median, col='red')

sd = by(extra, group, sd) #adicionando o desvio-padrão ao boxplot
points(sd, col='red')

#boxplot horizontal
sleepboxplot = boxplot(data=sleep, extra~group, main = "Duração do sono",
                       col.main = 'red', ylab="Horas",xlab='Droga', horizontal = T)

#boxplot horizontal e com cores diferentes
sleepboxplot = boxplot(data=sleep, extra~group, main = "Duração do sono",
                       col.main = 'red', ylab="Horas",xlab='Droga', horizontal = T,
                       col=c('blue','red'))

#HISTOGRAMA
#definindo os dados
dados = cars$speed

hist(dados) #histograma simples
hist(dados, breaks = 10) #histograma com 10 barras
hist(dados, labels = T, breaks = c(0,5,10,20,30)) #histograma com intervalos
hist(dados, labels = T, breaks = 10, ylim = c(0,10)) #redefinindo as dimensões do 
#gráfico com ylim

#adicionando linhas ao histograma
hey = hist(dados, breaks = 10)
xaxis = seq(min(dados), max(dados), length=10)
yaxis = dnorm(xaxis, mean=mean(dados),sd=sd(dados))
yaxis = yaxis*diff(hey$mids)*length(dados)
lines(xaxis, yaxis, col='red')

#GRÁFICO DE PIZZA
fatias = c(40,20,40)
paises = c('Brasil','Argentina','Chile') #nomeando as labels
paises = paste(paises, fatias)
paises = paste(paises,"%",sep="")
paises

#construindo o gráfico
pie(fatias, labels=paises, 
    col=c('darksalmon','gainsboro','lemonchiffon4'),
    main='Distribuição de vendas')

#trabalhando com dataframes
attach(iris)

Values = table(Species)
labels = paste(names(Values))
pie(Values, labels=labels,main="Distribuição de Espécies")

#Gráfico de pizza 3D
library(plotrix)
pie3D(fatias, labels=paises, explode = 0.05, col=c("steelblue","tomato2","tan3"),
      main="Distribuição de vendas")

#BARPLOTS

#Criando uma matriz
casamentos = matrix(c(652,1537,598,242,36,46,38,21,218,327,106,67), nrow = 3,
                    byrow=T)

colnames(casamentos) = c("0","1-150","151-300",">300") #nomeando as colunas
rownames(casamentos) = c("Casado","Divorciado","Solteiro") #nomeando as linhas

#construindo plot
barplot(casamentos)

barplot(casamentos, beside = T)

barplot(t(casamentos), beside=T)