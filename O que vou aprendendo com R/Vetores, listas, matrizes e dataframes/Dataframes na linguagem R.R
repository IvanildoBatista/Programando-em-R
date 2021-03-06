#Trabalhando com Dataframes

#criando dataframes
df=data.frame() #um dataframe vazio
class(df)#verificando a classe
df #n�o possui nem linhas nem colunas


#criando vetores vazios

nomes = character() #vetor de caracteres
idades = numeric() #vetor de n�meros
data = as.Date(character()) #vetor de datas
codigos = integer() #vetor de inteiros

#transformando esses vetores em um dataframe
df = data.frame(c(nomes,idades,data,codigos))
df

#criando vetores

pais = c('EUA','Dinamarca','Brasil','Espanha','Holanda')
nome = c('Alberto','Cl�udio','Jo�o','Jos�','Gilberto')
altura = c(1.93,1.59,1.63,1.59,1.58)
codigo = c(5069,3258,6358,1258,4555)

#criando o dataframe
pesq = data.frame(pais,nome,altura,codigo)
pesq

#inserindo uma nova coluna

olhos = c('verde','castanho','azul','azul','castanho')

pesq = cbind(pesq,olhos)
pesq

#informa��es sobre o dataframe

str(pesq) #informa��es gerais do dataframe
dim(pesq) #dimnes�o do dataframe
length(pesq) #comprimento do dataframe

# Obtendo um vetor do dataframe
pesq$pais
pesq$altura

#Extraindo um valor �nico do dataframe

pesq[1,1]
pesq[3,2]

#n�mero de linhas e de colunas do dataframe

nrow(pesq)
ncol(pesq)

#primeiros elementos do dataframe

head(pesq)
head(mtcars)

#�ltimos elementos do dataframe

tail(pesq)
tail(mtcars)

#filtrando o dataframe

pesq[altura<1.60]
pesq[altura<1.60, c('codigo','olhos')] #selecionada as colunas codigo e olhos,
#para os valores de altura menores que 1.60

#nomeando dataframes

names(pesq) = c('Pa�s','Nome','Altura','C�digos','Olhos')
pesq

colnames(pesq) = c('Var 1','Var 2','Var 3','Var 4','Var 5') #renomeando apenas
#colunas
pesq

rownames(pesq) = c("Obs 1","Obs 2","Obs 3","Obs 4","Obs 5") #renomeando apenas as
#linhas
pesq

#formas de ler bases de dados:

##read.csv() - arquivos csv
##read.xls() - arquivos excel
##read.spss() - arquivos spss
##read.mtp() - arquivos minitab
##read.table() - arquivos txt
##read.delim() - leitura de arquivos delimitados

#dataframe de um arquivo csv

df2 = data.frame(read.csv(file = 'C:/Users/junio/dframe.csv',
                          header = TRUE, sep = ','))

df2 #imprimindo do dataframe

head(df2) #primeiras linhas do dataframe
summary(df2) #sum�rio do dataframe

df2$Diabete #coluna diabetes
df2$status #retorna um valor nulo, pois o certo � Status
df2$Status #forma correta

plot(df2$Idade) #gerando um gr�fico da coluna selecionada

#usando a base mtcars

summary(mtcars$mpg)
plot(mtcars$mpg, mtcars$disp) #gr�fico de dispers�o entre duas vari�veis
plot(mtcars$mpg, mtcars$wt) #outro gr�fico de dispers�o entre duas vari�veis

#combinando dataframes

df3 = merge(pesq,df2)
df3