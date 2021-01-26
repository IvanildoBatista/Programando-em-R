#Gráficos na linguagem R

#demonstração de gráficos
demo('graphics')

# Criando variáveis e gerando um gráfico simples

x = 5:14
y = 17:26
plot(x,y)

# com vetores

altura = c(145,167,176,123,150)
largura = c(51,63,64,40,55)
plot(altura, largura)

#Plotando um dataframe
plot(lynx)

plot(lynx, ylab = "Plot com dataframes", xlab="observações", col = 'red',
     col.main = 52, cex=1.5)

plot(lynx, main ="Plotando um dataframe" ,ylab = "observações", xlab="Período", 
     col = 'red', col.main = 52, cex=1.5)

#Plotando um histograma

hist(warpbreaks$breaks)

#plotando um boxplot

View(airquality)

airquality&lt;-transform(airquality, Month=factor(MOnth)) #transformando a coluna Month em fator
boxplot(Ozone~Month, airquality, xlab = 'Month', ylab='Ozone(ppb)') #plotando o boxplot

#Parâmetros usados para plotagem de gráficos

#col - cor do plotting
#lty - tipo de linha
#lwd - largura da linha
#pch - símbolo do plot
#xlab - label do eixo x
#ylab - label do eixo y
#las - orientação dos labels
#bg - backgroud color
#mfrow - número de plots por linha
#mfcol - número de plots por coluna

#Funções básicas

#plots()
#lines()
#points()
#text()
#title()

#Exemplos

par()
par('pch')
par('lty')

x=2:4
plot(x, pch='c')

par(mfrow=c(2,2), col.axis='red')
plot(1:8, las='0', xlab = 'xlab', ylab = 'ylab', main = 'LAS 0')
plot(1:8, las='1', xlab = 'xlab', ylab = 'ylab', main = 'LAS 1')
plot(1:8, las='2', xlab = 'xlab', ylab = 'ylab', main = 'LAS 2')
plot(1:8, las='3', xlab = 'xlab', ylab = 'ylab', main = 'LAS 3')