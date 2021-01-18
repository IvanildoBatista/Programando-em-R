#TEXT MINING na Linguagem R

#Instalando pacotes para mineração de textos

install.packages(c('tm','SnowballC','wordcloud','RColorBrewer'))
library(tm)
library(SnowballC)
library(wordcloud)
library(RColorBrewer)

#Carregando a base de dados
df <- read.csv("C:/Users/junio/questoes.csv", stringsAsFactors = FALSE)

#Visualizando as primeiras linhas da base de dados
head(df)

# Realizando o processo de text mining

dfCorpus = VCorpus(VectorSource(df$Question)) #criando um Corpus
#antes estava apenas Corpus, mudei para VCorpus
dfCorpus = tm_map(dfCorpus, PlainTextDocument) #convertendo Corpus em um documento de texto plano
dfCorpus = tm_map(dfCorpus, removePunctuation) #removendo pontuação
dfCorpus = tm_map(dfCorpus, removeWords, stopwords('english')) #removendo palavras específicas do idioma inglês
dfCorpus = tm_map(dfCorpus, stemDocument) #convertendo versões de uma mesma palavra
dfCorpus = tm_map(dfCorpus, removeWords, c('the','this','that',stopwords('english'))) #removendo palavras específicas

#Criando a Nuvem de Palavras
wordcloud(dfCorpus, max.words = 100,random.order = FALSE)

#EXEMPLO 2 - Text Mining do Discurso de Martin Luther King

arquivo = "http://www.sthda.com/sthda/RDoc/example-files/martin-luther-king-i-have-a-dream-speech.txt"
texto = readLines(arquivo)

#visualizando o arquivo
texto

docs = VCorpus(VectorSource(texto))

#Pré-processamento
inspect(texto)

toSpace = content_transformer(
  function(x, parttern) gsub(parttern," ",x)) #função para substituir caracteres por um espaço em branco

#substituindo alguns caracteres por espaço
docs = tm_map(docs, toSpace, "/")
docs = tm_map(docs, toSpace, "@")
docs = tm_map(docs, toSpace, "\\|")

#Convertendo o texto para minúsuculo
docs = tm_map(docs, content_transformer(tolower))

#Removendo números
docs = tm_map(docs, removeNumbers)

#Removendo palavras mais comuns do idioma inglês
docs = tm_map(docs, removeWords, stopwords('english'))

#Definindo um vetor de palavras a serem removidas
docs = tm_map(docs, removeWords, c('the','this','that','and','is','or','its','it'))

#Removendo pontuações
docs = tm_map(docs, removePunctuation)

#Removendo espaços extras que aparecem com frequência
docs = tm_map(docs, stripWhitespace)

#Text Stemming
docs = tm_map(docs, stemDocument)

#Convertendo em uma matriz
dtm = TermDocumentMatrix(docs)
m = as.matrix(dtm)
v = sort(rowSums(m),decreasing = TRUE)
d = data.frame(word = names(v),freq=v)
head(d,10)
head(d,20)
head(d,30)

#Nuvem de palavras do discurso de Martin Luther King
wordcloud(docs,max.words = 100,random.order = FALSE)

#Outra nuvem de palavras
set.seed(1234)
wordcloud(words=d$word,freq = d$freq, min.freq = 1, max.words = 200,
          random.order = FALSE, rot.per = 0.35, colors = brewer.pal(8,"Dark2"))

#Criando uma tabela de frequência
findFreqTerms(dtm, lowfreq = 4)
findAssocs(dtm, terms = 'freedom', corlimit = 0.3)
head(d,10)

#Gráfico de barras
barplot(d[1:10,]$freq, las = 2, names.arg = d[1:10,]$word,
        col='lightblue',main = "Palavras mais frequentes no discurso de Martin Luther King",
        ylab='Palavras frequentes')

barplot(d[1:20,]$freq, las = 2, names.arg = d[1:20,]$word,
        col='red',main = "Palavras mais frequentes no discurso de Martin Luther King",
        ylab='Palavras frequentes')

barplot(d[1:30,]$freq, las = 2, names.arg = d[1:30,]$word,
        col='lightgreen',main = "Palavras mais frequentes no discurso de Martin Luther King",
        ylab='Palavras frequentes')