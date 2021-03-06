# Curso An�lise de dados com Linguagem R
# da  Escola Nacional de Administra��o P�blica

#Nesse curso foram abordados os assuntos:
##M�dulo 1: Introdu��o � An�lise de Dados.
##M�dulo 2: Fundamentos da Linguagem R.
##M�dulo 3: Introdu��o � Machine Learning.
##M�dulo 4: An�lise dos Dados na Pr�tica.


## Instalando os os pacotes

install.packages('ggplot2')
install.packages('dplyr')
install.packages('rmarkdown')
install.packages('tinytex')
install.packages('caTools')
install.packages('caret')
install.packages('e1071')
install.packages('tidyr')

## Importando as bibliotecas

library('ggplot2')
library('dplyr')
library('rmarkdown')
library('tinytex')
library('caTools')
library('caret')
library('e1071')
library('tidyr')

#Criando vari�vel e atribuindo um valor
mensagem = 'Hello World !'
mensagem

########################Estruturas de dados#################################

                                ## Vetores

cidade = c('Bras�lia','S�o Paulo','Rio de Janeiro','Porto Alegre')
cidade

temperatura = c(32,22,35,17)
temperatura

### trabalhando com vetores

cidade[1] #Acessando o primeiro valor
cidade[1:3] #Acessando do primeiro ao terceiro valor
temperatura[1:3] ##Acessando do primeiro ao terceiro valor

cidade2 = cidade #copiando vetor
cidade2

cidade2[3] = 'Belo Horizonte' #alterando valor em um vetor
cidade2

cidade2[5]='Curitiba' #Adicionando valor a um vetor
cidade2

cidade2 = NULL #deletando um vetor
cidade2

regiao=c('Centro Oeste','Sudeste','Sudeste','Sul')
regiao

                                  ## Fatores

UF = factor(c('DF','SP','RJ','RS')) #criando um fator
UF

##fatores ordenados

grau.instrucao = factor(c('N�vel M�dio','Superior','N�vel M�dio','Fundamental'),
                        levels = c('Fundamental','N�vel M�dio','Superior'),
                        ordered = TRUE)

grau.instrucao #vai mostrar os n�veis do menor para o maior

                                  ## Listas

##Criando uma lista

pessoa = list(sexo ='M',cidade='Bras�lia',idade=20)
pessoa

pessoa[1] #Acessando primeira vari�vel e primeiro valor da lista
pessoa[[1]] #Acessando primeiro valor da lista
pessoa[['idade']]=22 #editando uma lista
pessoa
pessoa[['idade']]=NULL #deletando valor da lista
pessoa
pessoa[c('cidade','idade')] #filtrando uma lista


#criando lista de listas
cidades = list(cidade=cidade, temperatura=temperatura,regiao = regiao)
cidades

                                  ##Dataframe

#criando dataframes
df = data.frame(cidade,temperatura)
df

df2 = data.frame(cidades)
df2

#trabalhando com dataframes
df[1,2] #acessando valor da primeira linha e segunda coluna
df[,1] #acessando primeira coluna
df[1,] #acessando primeira linha

df2[c(1:3),c(1,3)] #acessando linhas 1 a 3 e colunas 1 e 3

names(df) #nome das colunas do dataframe
dim(df) #dimens�o do dataframe
str(df) #tipos de dados do dataframe

df$cidade #selecionando uma coluna espec�fica do dataframe
df['cidade'] #selecionando uma coluna espec�fica do dataframe

                                  ## Matrizes
#criando uma matriz

m = matrix(seq(1:9),nrow = 3)
m

#criando uma matriz e nomenda suas linhas e colunas

m2 = matrix(seq(1:25),ncol=5,byrow=TRUE,dimnames = list(c(seq(1:5)),
                                                        c('A','B','C','D','E')
                                                        )
            )
m2


                             ##Estruturas de repeti��o
#estrutura FOR

for (i in seq(12)){
  print(i)
}#imprimindo os valores de 1 a 12

#estrutura WHILE

i = 0
while(i<=10){
  print(i)
  i=i+1
} #imprimir valores de 1 at� 10
#enquanto os valores forem menores iguais a 10, pode imprimir, quando 
#passar disso a impress�o ir� parar

                             ## controle de fluxo

x=10
if (x>0){
  print('N�mero positivo')
}#se o valor for maior que zero, imprimir a mensagem "n�mero positivo"


nota = 
if (nota >=7){
  print("Aprovado")
}  else if (nota >5 && nota <7){
  print("Recupera��o")
} else{print('Reprovado')}

                              ##Fun��es

#criando uma fun��o para identificar se um n�mero  � par ou �mpar
par.impar = function(num){
  if((num%%2)==0){
    return('Par')
  }else
    return("�mpar")
}

#usando a fun��o
par.impar(3)
par.impar(145)
par.impar(222222)
par.impar(54)

                                 ##Aplly
x = seq(1:9)
matriz = matrix(x, ncol=3)
matriz

result = apply(matriz, 1, sum) #soma as linhas e returna em uma lista
result

#laplly e saplly 
numeros.p = c(2,4,6,8,10,12)
numeros.i = c(1,3,5,7,9,11)
numeros = list(numeros.p, numeros.i) #lista de listas
numeros

#apresentam os mesmos resultados em formato diferente
lapply(numeros, mean)
sapply(numeros, mean)


                          ##Gr�ficos
carros = mtcars[,c(1,2,9)]
head(carros)

hist(carros$mpg)#histograma
plot(carros$mpg,carros$cyl)#gr�fico de dispers�o

#usando ggplot
ggplot(carros, aes(am))+geom_bar() #gr�fico de barras com ggplot

                             ##Jun��es/Joins

#criando dataframes
df1 = data.frame(Produto = c(1,2,3,5), preco = c(15,10,25,20))
df2 = data.frame(Produto = c(1,2,3,4), Nome=c('A','B','C','D'))

df3=left_join(df1,df2,'Produto')
df3 #vai gerar um valor NAN em Nome

df4=right_join(df1,df2,'Produto')
df4 #vai gerar um valor NAN em Preco

df5=inner_join(df1,df2,'Produto')
df5 #a linha que tem o valor NAN desaparece

                        ##Selecionando dados

versicolor=filter(iris, Species=='versicolor')
versicolor #selecionando do dataset Iris apenas a flor do tipo versicolor

dim(versicolor)#dimens�o dessa base derivada

slice(iris, 5:10)

select(iris, 2:4)#selecionando colunas de 2 a 4

select(iris, -Sepal.Width)#selecionando a base de dados sem uma das colunas

iris2 = mutate(iris, nova.coluna = Sepal.Length+Sepal.Width)#criando uma nova base de
#dados com uma nova coluna com base em outras colunas
iris2

iris2[, c('Sepal.Length','Sepal.Width','nova.coluna')]#filtrando a base em rela��o
#a colunas espec�ficas

select(iris,Sepal.Length)%>%
  arrange(Sepal.Length) #ordernar uma coluna da base de dados, do menor valor 
#para o menor

iris%>%group_by(Species)%>%summarise(mean(Sepal.Length))
#agrupando os valores pela m�dia
iris%>%group_by(Species)%>%summarise(median(Sepal.Length))
#agrupando os valores pela mediana
iris%>%group_by(Species)%>%summarise(var(Sepal.Length))
#agrupando os valores pela vari�ncia
iris%>%group_by(Species)%>%summarise(sd(Sepal.Length))
#agrupando os valores pelo desvio padr�o

#posso usar tamb�m outras colunas da base de dados

                          ##Transforma��o de dados
dfDate = data.frame(Produto=c('A','B','C'),
                    A.2015=c(10,12,20),
                    A.2016=c(20,25,35),
                    A.2017=c(15,20,34)
                    )
dfDate

dfDate2 = gather(dfDate,'Ano','Quantidade',2:4)
dfDate2 #transformando linhas em colunas

dfDate3=separate(dfDate2,Ano, c('A','Ano'))
dfDate3 #separei os valores de letra e ano em duas colunas

dfDate3$Mes = c('01','02','03') #acrescentando coluna
dfDate3

dfDate4 = dfDate3%>%
  unite(Data,Mes,Ano,sep='/') #criando uma nova coluna com m�s e o ano
dfDate4

                    ## Trabalhando com dados reais
#Dados obtidos no portal da Transpar�ncia e refere-se a viagens de servidores
#http://www.portaltransparencia.gov.br/download-de-dados/viagens

viagens = read.csv('C:/Users/junio/2019_viagem.csv',sep=';',dec=',')
viagens

head(viagens)#primeiras linhas

View(viagens)#visualizar a base completa

dim(viagens)#dimens�o da base de dados

summary(viagens)#sum�rio da base de dados

summary(viagens['Valor.passagens'])#sum�rio da coluna valor das passagens

glimpse(viagens)#transforma as colunas em linhas

names(viagens)#nomes das colunas

str(viagens)#tipos dos dados

##transformando dados

#transformando de fator para data
viagens$data.inicio = as.Date(viagens$Per�odo...Data.de.in�cio, "%d/%m/%Y")
#verificando o resultado
glimpse(viagens$data.inicio)

#trabalhando apenas com m�s e ano
viagens$data.inicio.formatada = format(viagens$data.inicio, "%Y-%m")

##Explorando os dados

hist(viagens$Valor.passagens)#histograma, para ver a distribui��o das vari�veis
summary(viagens$Valor.passagens)#sum�rio da coluna valor das passagens
boxplot(viagens$Valor.passagens)#boxplot da coluna valor das passagens
sd(viagens$Valor.passagens)#desvio padr�o da coluna valor das passagens
var(viagens$Valor.passagens)#vari�ncia da coluna valor das passagens
mean(viagens$Valor.passagens) #m�dia da coluna valor das passagens
median(viagens$Valor.passagens)#mediana da coluna valor das passagens
colSums(is.na(viagens)) #verificando se h� valores ausentes na base de dados
str(viagens$Situa��o)#tipo de dado da coluna Situa��o

table(viagens$Situa��o)#quantidade de valores

prop.table(table(viagens$Situa��o))*100 #calculando a probabilidade de ocorr�ncia

## Visualizando os dados

p1 = viagens%>% #da base de dados viagens
  group_by(Nome.do.�rg�o.superior)%>% #vou agrupar por org�o superior
  summarise(n=sum(Valor.passagens))%>% # e somar os valores gastos em passagens
  arrange(desc(n))%>% #na ordem decrescente
  top_n(15)#os que 15 mais gastam com passagens a�reas

names(p1) = c('orgao','valor')#renomeando as colunas
p1

#conforme a tabela gerada, �rg�o p�blico que mais gasta com passagens a�reas �
#o minist�rio p�blio e em seguida vem o minist�rio da defesa.

##Gr�ficos de barras

#as mesmas informa��es geradas anteriormente, por�m plotadas
ggplot(p1, aes(x=reorder(orgao,valor),y=valor))+
  geom_bar(stat='identity')+
  coord_flip()+
  labs(x='valor',y='�rg�os')

#gastos por destinos
p2 = viagens%>%
  group_by(Destinos)%>%
  summarise(n=sum(Valor.passagens))%>%
  arrange(desc(n))%>%
  top_n(15)

names(p2)  =c('Destino','valor')

ggplot(p2, aes(x = reorder(Destino, valor),y=valor))+
  geom_bar(stat='identity', fill='#0ba791')+
  geom_text(aes(label=valor), vjust=0.3, size=3)+
  coord_flip()+
  labs(x='valor',y='Destino')

options(scipen = 999)

## Viagens por m�s

p3 = viagens%>%
  group_by(data.inicio.formatada)%>%
  summarise(qtd=n_distinct(Identificador.do.processo.de.viagem))

head(p3)

ggplot(p3, aes(x=data.inicio.formatada,y=qtd, group=1))+
  geom_line()+
  geom_point()

                  ##Criando modelos de machine learning

diabetes = read.csv('C:/Users/junio/diabetes.csv')
diabetes

View(diabetes)
str(diabetes)#tipos de dados
colSums(is.na(diabetes))#verificando se h� valores faltantes
diabetes$Outcome = as.factor(diabetes$Outcome)#transformando a coluna 
#ooutcome para fator

summary(diabetes$Insulin)#sum�rio da coluna insulina
boxplot(diabetes$Insulin)#boxplot da coluna insulina

##An�lise Explorat�ria

boxplot(diabetes)#boxplot das colunas da base de dados
hist(diabetes$Pregnancies)#histograma da coluna de gr�vidas
hist(diabetes$Age)#histograma da coluna de idade
hist(diabetes$BMI)#histograma da coluna IMC

##removendo valores
diabetes2 = diabetes%>% filter(Insulin<=250)
boxplot(diabetes2$Insulin)
summary(diabetes2$Insulin)

##Construindo o modelo
set.seed(123)
#separand uma amostra dos �ndices da base de dados
index=sample.split(diabetes2$Pregnancies, SplitRatio = .70)
index

#base de treino
train=subset(diabetes2, index=TRUE)
#base de teste
teste=subset(diabetes2, index=FALSE)

##criando o modelo

#modelo KNN
modelo = train(Outcome~.,data=train, method = 'knn')
modelo$results#resultados do modelo
modelo$bestTune#melhores par�metros do modelo: k=9

#modelo KNN com par�metro k expandido
modelo2 = train(Outcome~.,data=train, method = 'knn',
               tuneGrid=expand.grid(k=c(1:20)))
modelo2$results#resultados
modelo2$bestTune#melhores par�metros do modelo: k=17

#modelo NAIVE-BAYES

modelo3 = train(Outcome~., data=train,method='naive_bayes')
modelo3$results# A acur�cia foi um pouco menor, que do segundo modelo 
#KNN
modelo3$bestTune#melhores par�metros

#Modelo SVM Radial Sigma
modelo4 = train(Outcome~., data=train, method='svmRadialSigma',
                preProcess=c('center'))
modelo4$results#acur�cia foi ligeiramente melhor
modelo4$bestTune#melhores par�metros

##gerando as previs�es
predicoes = predict(modelo4, teste)
predicoes

##usando a matriz de confus�o para comparar os resultados
confusionMatrix(predicoes, teste$Outcome)
#obtive uma acur�cia de 79.49%





















































































































































































































































































