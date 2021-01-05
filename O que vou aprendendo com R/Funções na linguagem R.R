#FUNÇÕES NA LINGUAGEM R

#O R possui funções internasou funções Built-in:

#abs(),sqrt(),prod(),rev(),c() e contributors()

#FUNÇÕES

sample() #gera uma amostra aleatória
args(sample) #mostra o parâmetro das funções
args(mean)
args(sd)

#Built-in

abs(-43) #valor em módulo
sum(c(1:5)) #soma os valores
mean(c(1:5)) #tira a média
round(c(1.1:5.8)) #arredonda valores
rev(c(1:5))#pega um vetor e inverte a posição dos seus valores
seq(1:5)#gera a sequência de valores
sort(rev(c(1:5)))#reverte o funçã rev()
append(c(1:5),6) #insere um valor em um vetor
vec1 = c(1.5,2.5,8.4,3.7,6.3)
vec2=rev(vec1)
vec2

#Funções dentro de funções

plot(rnorm(100)) #gerando valores com uma distribuição normal
mean(c(abs(vec1),abs(vec2))) #média entre o módulo de vetores

#Criando funções

myfunc = function(x){x+x} #criando uma função que soma valores
myfunc(10) #usando a função
class(myfunc) #verificando a classe do objeto gerado

myfunc2 = function(a,b){
  valor=a^b
  print(valor)
} #gerando outra função com potência

myfunc2(13,2)

#Jogando dados

jogando_dados=function(){
  num = sample(1:6, size=1)
  num #essa é uma variável local
}

jogando_dados()

#Escopo

num=c(1:6)

print(num)

num #essa é uma variável global


#Funções em argumentos

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