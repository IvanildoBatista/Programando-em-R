#Fam�lia Apply na linguagem R

#As fun��es da fam�lia apply() s�o uma forma de gerar loop for de forma mais 
#estilizada, pois loops for em R n�o s�o muito bons.

#Principais fun��es da fam�lia apply():

#1) apply()
#2) lapply()
#3) sapply()
#4) tapply()
#5) mapply()
#6) vapply()
#7) eapply()
#8) rapply()
#9) apply()
#10) by()

#Usando as fun��es SAPPLY() e APPLY(0)

lista1 = list(a=(1:10),b=(45:77)) #criando uma lista
lista1

sapply(lista1, sum) #aplicando uma fun��o nos elementos da lista
#fun��o soma
sapply(lista1, mean)
#fun��o m�dia

x = matrix(rnorm(9),nr=3,byrow=T) #criando uma matriz
x

apply(x, 1, mean) #tirando a m�dia das linhas
apply(x, 2, mean) #tirando a m�dia das colunas
apply(x, 1, plot) #plotando a m�dia das linhas

resultapply = apply(x,1,mean) #atribuindo o resultado da fun��o a uma vari�vel
resultapply

#criando um dataframe
escola = data.frame(Aluno = c('Alan','Alice','Alana','Aline','Alex','Ajay'),
                    Matem�tica = c(90,80,85,87,56,79),
                    Geografia = c(100,78,86,90,98,67),
                    Qu�mica = c(76,56,89,90,100,87))

escola

escola$Geografia

escola$Media = NA #criando nova coluna com valores NA

escola

escola$Media = apply(escola[,c(2,3,4)],1,mean) #substituindo valores pela m�dia
#com a fun��o apply

escola

#Usando as fun��es TAPPLY() e SQLDF()

install.packages('sqldf')
library(sqldf)
require(sqldf)

escola2 = data.frame(Aluno = c('Alan','Alice','Alana','Alan','Alice','Alana'),
                     Semestre = c(1,1,1,2,2,2),
                     Matem�tica = c(90,80,85,87,56,79),
                     Geografia = c(100,78,86,90,98,67),
                     Qu�mica = c(76,56,89,90,100,87))
escola2

sqldf("select aluno, sum(Matem�tica), sum(Geografia), sum(Qu�mica) from escola2
      group by aluno")

tapply((escola2$Matem�tica),escola2$Aluno,sum)

#Usando a fun��o BY()

by(escola2[,c(2,3,4)], escola2$Semestre,colSums)

#Usando a fun��o LAPPLY()

#geram os mesmos resultados, mas de formas diferentes
lapply(lista1, sum)
sapply(lista1, sum)

#Usando a fun��o VAPPLY()
vapply(lista1, fivenum, c(Min.=0, "1st Qu." = 0, Median = 0, "3rd Qu"=0,Max=0))

#Usando a fun��o REPLICATE()

replicate(7, runif(10))

#Usando as fun��es RAPPLY() e MAPPLY()

mapply(rep, 1:4,4:1)

lista2 = list(a=c(1:5),b=c(6:10))
lista2

rapply(lista2, sum)
rapply(lista2, sum, how='list') #resultado anterior, mas em forma de lista