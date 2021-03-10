# Trabalhando com Matrizes

#Para criar matrizes usa-se a função matrix()

#Criando matrizes

#por número de linhas
matrix(c(1,2,3,4,5,6),nr=2) #matriz com 2 linhas
matrix(c(1,2,3,4,5,6),nr=3) #matriz com 3 linhas
matrix(c(1,2,3,4,5,6),nr=6) #matriz com 6 linhas
#por número de colunas
matrix(c(1,2,3,4,5,6),nc=2) #matriz com 2 colunas
matrix(c(1,2,3,4,5,6),nc=3) #matriz com 3 colunas
matrix(c(1,2,3,4,5,6),nc=6) #matriz com 6 colunas
#nc e nr devem ser múltiplos dos número de elementos da matriz


#Criando matrizes com um vetor

my_data = c(1:10) #criando um vetor
matrix(data=my_data, nrow = 5, ncol=2, byrow= T) #criando matriz e ordenando 
#os elementos por linha
matrix(data=my_data, nrow = 5, ncol=2, byrow= F) #criando matriz e ordenando
#os elementos por coluna

#Fatiando uma matriz (ou slicing)
mat=matrix(c(2,3,4,5), nr=2)

mat[1,2] #selecionando elemento da linha 1 e da coluna 2
mat[2,2] #selecionando elemento da linha 2 e da coluna 2
mat[1,3] #selecionando elemento da linha 1 e da coluna 3
mat[,2] #selecionando a coluna 2

#Criando uma matriz diagonal
matriz = 1:3
diag(matriz) #apenas a diagonal terá os valores que foram definidos

#Extraindo vetor de uma matriz
vetor = diag(matriz)
vetor
diag(vetor)

#Transpor uma matriz
W=matrix(c(2,4,8,12), nr=2, ncol=2)
W

t(W)#transposta da matriz
U=t(W)#salvando em uma variável
U

#Inversa de uma matriz
solve(W)

#Operações com matrizes

#criando novas matrizes
mat1 = matrix(c(2,3,4,5), nr = 2)
mat2 = matrix(c(6,7,8,9), nr = 2)

#operações
mat1*mat2 #multiplicando matrizes
mat1/mat2 #divisão entre matrizes
mat1+mat2 #soma de matrizes
mat1-mat2 #subtração entre matrizes

#multiplicando a matriz por um vetor
x=c(1:4)
x

y= matrix(c(2,3,4,5), nr=2)

y*x

#Nomeando uma matriz

#criando a matriz
mat3 = matrix(c('Futebol','Natação','Campo','Piscina'), nr=2)

#nomeando as linhas e colunas da matriz
dimnames(mat3) = (list(c('linha1','linha2'),c('coluna1','coluna2')))

mat3

#Identificando linhas e colunas no momento da criação da matriz

matrix(c(1,2,3,4), nr=2, nc=2, dimnames = list(c('linha1','linha2'),
                                               c('coluna1','coluna2')))

#Combinando matrizes

mat4 = matrix(c(2,3,4,5), nr=2)
mat5 = matrix(c(6,7,8,9), nr=2)

cbind(mat4,mat5) #combinando matrizes por coluna
rbind(mat4, mat5) #combinando matrizes por linha

#Desconstruindo uma matriz
c(mat4) #transforma a coluna em vetor