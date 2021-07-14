
data(HairEyeColor)
#####################################################################
####################################################################
## QUESTÃO 1
length(HairEyeColor)

#(a) Qual o total de pessoas na amostra?
sum(HairEyeColor)

#(b) Qual a proporção de homens e de mulheres na amostra?
sum(HairEyeColor[,,'Male'])/sum(HairEyeColor)
sum(HairEyeColor[,,'Female'])/sum(HairEyeColor)


#(c) Quantos são os homens de cabelos pretos?
sum(HairEyeColor[,,'Male'][1, c('Brown','Blue','Hazel','Green')])

#(d) Quantas mulheres têm cabelos loiros? 
sum(HairEyeColor[,,'Female'][4, c('Brown','Blue','Hazel','Green')])

#(e) Qual a proporção de homens e de mulheres entre as pessoas ruivas? 

#proporção de homens ruivos entre pessoas ruivas
sum(HairEyeColor[,,'Male'][3,])/
  (sum(HairEyeColor[,,'Male'][3,])+ sum(HairEyeColor[,,'Female'][3,]))

#proporção de mulheres ruivas entre pessoas ruivas
sum(HairEyeColor[,,'Female'][3,])/
  (sum(HairEyeColor[,,'Male'][3,])+ sum(HairEyeColor[,,'Female'][3,]))


#(f) Quantas pessoas tem olhos verdes?
(sum(HairEyeColor[,,'Male'][1:4,c('Green')])+
    sum(HairEyeColor[,,'Female'][1:4,c('Green')]))

sum(HairEyeColor[,,'Female'][3,])
#####################################################################
####################################################################
## QUESTÃO 3

#primeira fotma
m<-matrix ( nrow =5 , ncol =5)

 # repeticao aninhada
 for ( i in 1:dim(m) [1]) {
   for ( j in 1:dim(m) [2]) {
     m[i,j] = i*j
     }
   }

m[lower.tri(m)] <- 0
print (m)

#segunda forma
m<-matrix (0 , nrow =5 , ncol =5)
for (j in 1:dim(m)[2]) {
   for (i in 1:dim(m) [1]) {
     if(j==i) {
       break
       } else {
         m[j,i]<-i*j
         }
     }
   }

print(m)

#####################################################################
####################################################################
##QUESTÃO 4

#LETRA A)

#com loop

total=0
for (i in 0:100) {
  total<-total + ((i-50)^2/100)
}
total

#sem loop

x = 0:100
sum((x-50)^2)/100


##LETRA B)

#com loop
total=0
for (i in 10:100) {
  total<-total + (i^3 + 4*i^2)
}
total

#sem loop
x = 10:100
sum(x^3 + 4*x^2)

## LETRA C)

#com loop
total=0
for (i in 1:25) {
  total<-total + (((2^i)/i) + (3^i/(i^2)))
}
total

#sem loop
x=seq(1:25)
x2 = 2^x
x3 = 3^x
x_2=x^2
sum(x2/x) + sum(x3/x_2)

## LETRA D)

sum = 0
for(i in 1:20) {
  for(j in 1:5) {
    sum = sum + ((i^4)/(3+j))
  }
}
print(sum)

#sem loop
a= seq(1:20)
a4 = a^4

b = seq(1:5)
b[1]

c = 3 + b[1]
d = 3 + b[2]
e = 3 + b[3]
f = 3 + b[4]
g = 3 + b[5]

sum(a4/c) + sum(a4/d) + sum(a4/e) + sum(a4/f) + sum(a4/g)
#####################################################################
####################################################################
##QUESTÃO 5


IC <- function(x, sd, n, nc){
  c(round(x - qnorm((1 - nc), mean=0, sd=1)*sd/(sqrt(n)),3), 
  round(x + qnorm((1 - nc), mean=0, sd=1)*sd/(sqrt(n)),3))
}

IC(5,2,20,0.025)
















