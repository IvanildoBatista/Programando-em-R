#Express�es Regulares na linguagem R

#O objeto � identificar se existem padr�es em um texto

#criando um vetor de texto
str = c("Express�es","regulares","em linguagem R","permitem busca de padr�es",
        "e explora��o de textos","podemos buscar padr�es em d�gitos",
        "como por exemplo","10992451280")

length(str) #comprimento do vetor de texto

str #imprimindo o vetor

#Trabalhando com as fun��es

#Fun��o grep(): retorna o vetor de �ndices dos caracteres que cont�m o padr�o
                #especificado

grep("ex",str,value = F) #�ndice do padr�o no texto
grep("ex",str,value = T) #texto onde o padr�o foi encontrado
grep("\\d",str,value = F) #�ndice dos d�gitos
grep("\\d",str,value = T) #texto onde est�o os d�gitos


#Fun��o grepl(): quando um padr�o � encontrado ou procura um padr�o

grepl("\\d",str) #procurando um padr�o de d�gitos
grepl("\\D",str) #buscando um padr�o de n�o d�gitos


#Fun��o gsub(): Substitui os caracteres encontrados de acordo com o padr�o
                #especificado

gsub("em","|",str) #onde tiver "em" ele vai substituir por "|" em "str"
gsub("ex","EX",str, ignore.case = T) #substituindo "ex" por "EX" em "str" e
#ignora letras mai�sculas ou min�sculas

#Fun��o sub(): Substitui o primeiro caracter encontrado de acordo com o padr�o
              #especificado

sub("em","EM",str)


#Fun��es regexpr() e gregexpr(): v�o mostrar a localiza��o do padr�o no texto

frase = "Isso � uma string"
regexpr(pattern = "u", frase)
gregexpr(pattern = "u", frase)
#nesse caso o "pattern" est� na posi��o 8


#Outros exemplos: eliminando elementos de um texto

str2 = c("2678 � maior que 45-@????!�$",
         "Vamos escrever 14 scripts na linguagem R")

str2

gsub("\\d","",str2) #eliminando d�gitos por espa�o
gsub("\\D","",str2) #eliminando n�o d�gitos
gsub("\\S","",str2) #eliminando espa�os
gsub("[iot]","",str2) #eliminando do texto as letras "i","o" e "t"
gsub("[[:punct:]]","",str2) #eliminando pontua��es
gsub("[^@]","",str2) #eliminando tudo, exceto o @