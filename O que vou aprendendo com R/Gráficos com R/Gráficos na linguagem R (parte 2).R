# Gráficos na linguagem R

#Salvando gráficos
#em png:
png("Gráfico1.png", width=500, height = 500, res = 72)

plot(iris$Sepal.Length, iris$Petal.Length, col=iris$Species, 
     main='Gráfico gerado a partir do dataset Iris')
dev.off()

#em pdf:
pdf("Gráfico2.pdf")

plot(iris$Sepal.Length, iris$Petal.Length, col=iris$Species, 
     main='Gráfico gerado a partir do dataset Iris')
dev.off()

#Estendendo a função plot

install.packages('plotrix')
library(plotrix)

#criando um plot e adicionando linhas
par(mfrow=c(1,1), col.axis='red')
plot(1:6, las=3, xlab = 'lty 1:6',ylab='',main = 'Mais opções ao plot')
ablineclip(v=1, lty=1, col='Sienna2',lwd=2)
ablineclip(v=2, lty=1, col='Sienna2',lwd=2)
ablineclip(v=3, lty=1, col='Sienna2',lwd=2)
ablineclip(v=4, lty=1, col='Sienna2',lwd=2)
ablineclip(v=5, lty=1, col='Sienna2',lwd=2)
ablineclip(v=6, lty=1, col='Sienna2',lwd=2)
ablineclip(v=7, lty=1, col='Sienna2',lwd=2)

plot(lynx)
plot(lynx, type='p',main='type p') #pontos
plot(lynx, type='l',main='type l') #linhas
plot(lynx, type='b',main='type b') #pontos e linhas, mas não se cruzam
plot(lynx, type='o',main='type o') #pontos e linhas que se cruzam
plot(lynx, type='h',main='type h') #linhas verticais
plot(lynx, type='s',main='type s') #retas
plot(lynx, type='n',main='type n') #sem plotagem

#Juntando dois plots

par(mar=c(4,3,3,3), col.axis="black")
plot(cars$speed, type = "s", col="red", bty="n",xlab="CarsID",ylab = " ")
text(8,14, "Velocidade",cex=0.85, col="red") #dimensão 8x14
par(new=T)
plot(cars$dist, type = "s", col="darkblue", bty="n", ann=F, axes=F)
axis(side = 4)
text(37,18, "Distância",cex=0.85, col="darkblue")
title(main = "Velocidade vs Distância")

#Plots a partir de datasets:

df = read.csv('C:/Users/junio/pibpercap.csv', stringsAsFactors = F)

df_1982 = subset(df, ano==1982)
View(df_1982)

plot(expectativa~pibpercap, data=df_1982)
plot(expectativa~pibpercap, data=df_1982, log='x') #transformando a variável x em log

mycol = c(Asia='tomato', Europe='chocolate4',Africa='dodgerblue2',
          Americas='darkgoldenrod1',Oceania='green4') #gerando um vetor para destacar
#as cores dos continentes
plot(expectativa~pibpercap, data=df_1982, log='x', col=mycol)


#criando um função que irá redimensionar os valores dos dados
mycex = function(var,r,f=sqrt){
  x=f(var)
  x_scaled=(x-min(x))/(max(x)-min(x)) #colocando os dados na mesma dimensão
  r[1] + x_scaled*(r[2]-r[1])
}

#Os tamanhos das bolinhas dos dados
plot(expectativa~pibpercap, data=df_1982, log='x', col=mycol[continente],
     cex=mycex(pop, r=c(0.2,10)))