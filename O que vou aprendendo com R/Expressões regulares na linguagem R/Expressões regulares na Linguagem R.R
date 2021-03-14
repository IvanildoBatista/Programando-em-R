#Expressões Regulares na linguagem R

#O objeto é identificar se existem padrões em um texto

#criando um vetor de texto
str = c("Expressões","regulares","em linguagem R","permitem busca de padrões",
        "e exploração de textos","podemos buscar padrões em dígitos",
        "como por exemplo","10992451280")

length(str) #comprimento do vetor de texto

str #imprimindo o vetor

#Trabalhando com as funções

#Função grep(): retorna o vetor de índices dos caracteres que contém o padrão
                #especificado

grep("ex",str,value = F) #índice do padrão no texto
grep("ex",str,value = T) #texto onde o padrão foi encontrado
grep("\\d",str,value = F) #índice dos dígitos
grep("\\d",str,value = T) #texto onde estão os dígitos


#Função grepl(): quando um padrão é encontrado ou procura um padrão

grepl("\\d",str) #procurando um padrão de dígitos
grepl("\\D",str) #buscando um padrão de não dígitos


#Função gsub(): Substitui os caracteres encontrados de acordo com o padrão
                #especificado

gsub("em","|",str) #onde tiver "em" ele vai substituir por "|" em "str"
gsub("ex","EX",str, ignore.case = T) #substituindo "ex" por "EX" em "str" e
#ignora letras maiúsculas ou minúsculas

#Função sub(): Substitui o primeiro caracter encontrado de acordo com o padrão
              #especificado

sub("em","EM",str)


#Funções regexpr() e gregexpr(): vão mostrar a localização do padrão no texto

frase = "Isso é uma string"
regexpr(pattern = "u", frase)
gregexpr(pattern = "u", frase)
#nesse caso o "pattern" está na posição 8


#Outros exemplos: eliminando elementos de um texto

str2 = c("2678 é maior que 45-@????!§$",
         "Vamos escrever 14 scripts na linguagem R")

str2

gsub("\\d","",str2) #eliminando dígitos por espaço
gsub("\\D","",str2) #eliminando não dígitos
gsub("\\S","",str2) #eliminando espaços
gsub("[iot]","",str2) #eliminando do texto as letras "i","o" e "t"
gsub("[[:punct:]]","",str2) #eliminando pontuações
gsub("[^@]","",str2) #eliminando tudo, exceto o @