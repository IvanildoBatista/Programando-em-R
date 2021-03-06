#FATORES E FATORES ORDENADOS

#Serve para armazenar vari�veis categ�ricas (nominais e ordinais) e usa-se a fun��o
#factor()

#Criando vetor

vec1 = c('Macho','Femea','Femea','Macho','Macho')

vec1

fac_vec1 = factor(vec1) #criando um fator com o vetor criado
fac_vec1
class(vec1) #verificando classe do vetor
class(fac_vec1) #verificando classe do fator

#Vari�veis categ�ricas nominais (n�o existe uma ordem expl�cita)

animais = c('Zebra','Pantera','Rinoceronte','Macaco','Tigre')
animais
class(animais) #verificando a classe

fac_animais = factor(animais)#transformando em um fator
fac_animais
class(fac_animais) #verificando a classe
levels(fac_animais) #verificando os n�veis do fator

#Vari�veis categ�ricas ordinais

grad = c('Mestrado','Doutorado','Bacharelado','Mestrado','Mestrado')
grad

fac_grad = factor(grad, order=TRUE,
                  levels = c('Doutorado','Mestrado','Bacharelado'))

summary(fac_grad) #sumarizando os dados do fator ordenado
summary(grad) #sumarizando os dados do vetor

#outro exemplo
vec2 = c('M','F','F','M','M','M','F','F','M','M','F')
vec2

fac_vec2 = factor(vec2)
fac_vec2
levels(fac_vec2) = c('Femea','Macho') #atribuindo outros valores aos n�veis do
#fator

fac_vec2 #verificando se os fatores foram alterados

#Mais exemplos

data = c(1,2,2,3,1,2,3,3,1,2,3,3,1) #criando um vetor
fdata = factor(data) #criando um fator com o vetor
fdata

rdata = factor(data, labels = c('I','II','III'))
rdata

#Fatores n�o ordenados

set1 = c('AA','B','BA','CC','CA','AA','BA','CC','CC','BA')
set1

f.set1=factor(set1)
f.set1
class(f.set1)
is.ordered(f.set1) #verificamdo se o fator est� ordenado

#Fatores ordenados

#ordenando o fator
o.set1 = factor(set1, levels =c('CA','BA','AA','CC','B'),ordered = TRUE)
o.set1
is.ordered(o.set1)
as.numeric(o.set1)# convertendo para valor num�rico
table(o.set1)

#Fatores e Dataframes

df = read.csv2('C:/Users/junio/etnias.csv',sep=',')
df
str(df) #informa��es sobre o dataframe
levels(df$Etnia)#n�veis da coluna Etnia

df$Etnia  =factor(df$Etnia)

str(df) #novamente informa��es sobre o dataframe
levels(df$Etnia)#n�veis da coluna Etnia

summary(df$Etnia)

#plotando gr�fico com colunas do dataframe
plot(df$Idade~df$Etnia, xlab = 'Etnia',ylab = 'Idade',
     main = 'Idade por Etnia')

#Gerando uma regress�o com as colunas do dataframe
summary(lm(Idade~Etnia, data = df))

#Convertendo uma coluna para fator
df$Estado_Civil.cat = factor(df$Estado_Civil,
                             labels = c('Solteiro','Casado','Divorciado'))

df
str(df)