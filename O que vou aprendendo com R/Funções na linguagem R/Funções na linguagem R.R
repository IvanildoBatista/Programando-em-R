#FUN��ES NA LINGUAGEM R

#O R possui fun��es internalizou fun��es Built-in:

#abs(),sqrt(),prod(),rev(),c() e contributors()

#FUN��ES

sample() #gera uma amostra aleat�ria
args(sample) #mostra o par�metro das fun��es
args(mean)
args(sd)

#Built-in

abs(-43) #valor em m�dulo
sum(c(1:5)) #soma os valores
mean(c(1:5)) #tira a m�dia
round(c(1.1:5.8)) #arredonda valores
rev(c(1:5))#pega um vetor e inverte a posi��o dos seus valores
seq(1:5)#gera a sequ�ncia de valores
sort(rev(c(1:5)))#reverte o fun�� rev()
append(c(1:5),6) #insere um valor em um vetor
vec1 = c(1.5,2.5,8.4,3.7,6.3)
vec2=rev(vec1)
vec2

#Fun��es dentro de fun��es

plot(rnorm(100)) #gerando valores com uma distribui��o normal
mean(c(abs(vec1),abs(vec2))) #m�dia entre o m�dulo de vetores

#Criando fun��es

myfunc = function(x){x+x} #criando uma fun��o que soma valores
myfunc(10) #usando a fun��o
class(myfunc) #verificando a classe do objeto gerado

myfunc2 = function(a,b){
  valor=a^b
  print(valor)
} #gerando outra fun��o com pot�ncia

myfunc2(13,2)

#Jogando dados

jogando_dados=function(){
  num = sample(1:6, size=1)
  num #essa � uma vari�vel local
}

jogando_dados()

#Escopo

num=c(1:6)

print(num)

num #essa � uma vari�vel global


#Fun��es em argumentos

vec1 = (10:13)
vec2 = c('a','b','c','d')
vec3 = c(6.5,9.2,11.9,5.1)

myfunc3 = function(...){
  df=data.frame(cbind(...))
  print(df)
}

myfunc3(vec1)
myfunc3(vec1,vec2)
myfunc3(vec1,vec2,vec3)
myfunc3(vec1,vec3)
myfunc3(vec2,vec3)