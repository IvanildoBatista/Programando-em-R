#Trabalhando com a biblioteca Lattice
#(biblioteca usada para plotagem de v�rios gr�ficos)


#Instalando a biblioteca
install.packages('lattice')
library(lattice)

#plotando com a biblioteca
xyplot(data=iris, groups=Species, Sepal.Length~Petal.Length)

#Scatterplot
splom(trees)

#Dataset Titanic
barchart(Class~Freq| Sex+Age, data=as.data.frame(Titanic), groups=Survived, stack=T,
         layout=c(4,1), auto.key=list(title="Dados Titanic", columns=2))

#ajustando a escala
barchart(Class~Freq| Sex+Age, data=as.data.frame(Titanic), groups=Survived, stack=T,
         layout=c(4,1), auto.key=list(title="Dados Titanic", columns=2),
         scales=list(x="free"))

#Base de dados e tabela estat�stica
x=equal.count(rivers)
x

PetalLength = equal.count(iris$Petal.Length,4)
PetalLength

xyplot(Sepal.Length ~ Sepal.Width| PetalLength, data=iris,
       panel = function(...){panel.grid(h=-1, v=-1, col.line='skyblue')
       panel.xyplot(...)})

#com reta de regress�o
xyplot(Sepal.Length ~ Sepal.Width| PetalLength, data=iris,
       panel = function(x,y,...){
         panel.xyplot(x,y,...)
         mylm<-lm(y~x)
         panel.abline(mylm)})

#Histograma
histogram(~Sepal.Length| Species, xlab = " ", data=iris, layout=c(3,1), 
          type="density", main = "Lattice histogram", 
          sub="Iris Dataset, Sepal Length")

#QQplot
qqmath(~Sepal.Length| Species, data=iris, distribution = qunif)

#Boxplot
bwplot(Species~Sepal.Length, data=iris)

#Violinplot
bwplot(Species~Sepal.Length, data=iris, panel = panel.violin)


par(mfrow=c(1,3))
cyls = split(mtcars, mtcars$cyl)
for (ii in 1:length(cyls)){
  tmpdf  =cyls[[ii]]
  sname=names(cyls)[ii]
  plot(tmpdf$wt, tmpdf$mpg, main=paste("MPG vs WT", sname, "cyl"),ylim = c(0,40),
       xlab="WT/1,000",ylab = 'MPG',pch=19, col="blue")
  grid()
}