#Trabalhando com Strings
#Strings s�o conjuntos de caracteres ou vetores de caracteres

#Criando uma string

texto = 'Isso � uma string'
texto

#transformando em caracteres

x=as.character(3.14)
x
class(x)

# Concatenando Strings
nome = 'Barack';sobrenome='Obama'

paste(nome, sobrenome)
cat(nome, sobrenome)

#Formatando a sa�da
sprintf('%s governa os EUA h� %d anos','Donald Trump',4)

#Extraindo partes de uma string
substr(texto, start = 12,stop = 17)#selecionado do caracter 12 at� o caracter 17

#Contando o n�mero de caracteres
nchar(texto)

#Alterando a capitaliza��o
tolower(texto) #tudo em letras min�sculas
toupper(texto) #tudo em letras mai�sculas

#importando a biblioteca stringr
library(stringr)

#Dividindo uma string em caracteres

strsplit('Histograma e Elementos de dados',NULL)#vai separar por letra
strsplit('Histograma e Elementos de dados',' ')#vai separa por palavra

#Vetores e strings

string1 = c('Uva � a minha fruta predileta',
            'Ma�� � a fruta que eu menos gosto')

string2 = c('A cor vermelha n�o combina com amarelo',
            'A cor azul combina com o meu terno azul marinho')

str_c(c(string1,string2)) #juntando os dois vetores de strings
str_count(string2,'m') #contar quantas vezes aparece uma letra
str_locate(string2,'m') #primeira e �ltima posi��o que o caracter se encontra
str_locate_all(string2,'m') #todos as posi��es que o caracter se encontra
str_replace(string2,'\\a','') #substitui primeira ocorr�ncia do caracter
str_replace_all(string2,'\\a','') #substitui todas as ocorr�ncias

#Detectando padr�es

string3 = '23 maio 2000'
string4 = '1 maio 2000'

padrao = 'maio 2000'#definindo o padr�o

#verificando se h� uma padr�o nas strings
grepl(pattern = padrao, x=string3)
grepl(pattern = padrao, x=string4)

novo_padrao = 'maio2000'

#verificando novamente
grepl(pattern = novo_padrao,x=string3)
grepl(pattern = novo_padrao,x=string4)

#Importando arquivos txt

arquivo = read.csv("https://raw.github.com/lhmet/adar-ufsm/master/data/CHUVAS.TXT")

head(arquivo) #primeiras linhas do arquivo
tail(arquivo) #�ltimas linhas do arquivo
str_count(arquivo,'7') #quantas vezes aparece o caracter
str_locate_all(arquivo,'7') #todas as localiza��es do caracter

#Criando fun��es para manipular strings

strtail = function(s, n=1){
  if (n<0)
    substring(s,1-n)
  else
    substring(s,nchar(s)-n+1)} #criando a fun��o

strtail('String de teste',6) #a fun��o pegou todos os 6 valores de tr�s para
#frente