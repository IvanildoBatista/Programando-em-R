#Data na Linguagem R

#Formatar datas

hoje = Sys.Date()
hoje #data de hoje

class(hoje) #classe do objeto

Sys.time() #data e hora de momento em que esse comando é rodado

Sys.timezone() #Local da data e da hora

#Parâmetros de formatações

# %d: dia do mês em dois dígitos (exemplo : 13)
# %m: mês em dois dígitos (exemplo : 01)
# %y: ano em dois dígitos (exemplo : 82)
# %Y: ano em quatro dígitos (exemplo : 1982)
# %A: dia da semana (exemplo : Friday)
# %a: dia da semana abreviado (exemplo : Fri) 
# %B: mês (exemplo  : Julho)
# %b: mês abreviado (exemplo : Jul)

#Formatando Times

# %H: Hora
# %M: Minuto
# %S: Segundo
# %T: formato reduzido para %H:%M:%S

#Formatando saídas

as.Date("2016-06-28")
as.Date("2016-Jun-28")
as.Date("Jun-28-16",format = "%b-%d-%y")
as.Date("28 June, 2016", format = "%d%B,%Y")

#Função format

Sys.Date()

format(Sys.Date(), format = "%d%B,%Y")

format(Sys.Date(), format = "Hoje é %A !") %

#Convertendo Datas

date1 = "Jun13, '96 hours: 23 minutes: 01 seconds:45"

date1_convert = as.POSIXct(date1, format = "%B%d, '%y hours:%H minutes:%M seconds: %S")
date1_convert

#Operações com datas

data_de_hoje = as.Date("2019-06-25", format = "%Y-%m-%d")
data_de_hoje+1 #soma mais um dia

my_time = as.POSIXct("2019-05-14 11:24:14")
my_time+1 #somou mais um segundo

data_de_hoje - as.Date(my_time) #dá a diferença de tempo em dias entre as datas

#Convertendo data em formato específico

dts = c(1127056501, 11044295502, 1129233601, 1113547501, 1119826801, 1132519502,
        1125298801, 1113289201) #criando um vetor

mydates = dts

class(mydates) = c('POSIXt','POSIXct') #alterando o formato
mydates #aqui as datas estão alteradas para o formato que escolhemos

mydates = structure(dts, class=c('POSIXt','POSIXct'))
mydates #obtém-se o mesmo resultado

#Função ISODate

b1 = ISOdate(2011,3,25)
b2 = ISOdate(2012,6,21)
b2-b1 #outra forma de obter a diferença de tempo entre datas

difftime(b2,b1,units = 'weeks') #diferença de semanas
difftime(b2,b1,units = 'secs')#diferença de segundas
difftime(b2,b1,units = 'mins')#diferença de minutos
difftime(b2,b1,units = 'hours')#diferença de horas
difftime(b2,b1,units = 'days')#diferença de dias
 
#Pacote Lubridate

install.packages('lubridate')
library(lubridate)

ymd("20160604") #ano, mês e dia
mdy('06-04-2016') #mês, dia e ano
dmy('04/06/2016') #dia, mês e ano

#usando o formato de ano, mês, dia e horas
chegada = ymd_hms("2016-06-04 12:00:00", tz = "Pacific/Auckland")
partida = ymd_hms("2011-08-10 14:00:00", tz = "Pacific/Auckland")

second(chegada)
second(chegada) <- 23 #atribuindo 23 segundo para a data
second(chegada)

wday(chegada)# o número do dia da semana
wday(chegada, label = TRUE) #o dia da semana

class(chegada)

interval(chegada, partida) #intervalo entre chegada e saída

tm1.lub = ymd_hms("2016-05-24 23:55:26")
tm2.lub = ymd_hms("25/05/16 08:32:25")

year(tm1.lub)
week(tm1.lub)

#extraindo hora, minuto e segundo
tm1.dechr = hour(tm1.lub) + minute(tm1.lub)/60 + second(tm1.lub)/3600
tm1.dechr

force_tz(tm1.lub, "Pacific/Auckland") #atribuindo um fuso para a data

# Gerando um dataframe de datas
sono <- data.frame(bed.time = ymd_hms("2013-09-01 23:05:24", "2013-09-02 22:51:09", 
                                      "2013-09-04 00:09:16", "2013-09-04 23:43:31", "2013-09-06 00:17:41", "2013-09-06 22:42:27", 
                                      "2013-09-08 00:22:27"), rise.time = ymd_hms("2013-09-02 08:03:29", "2013-09-03 07:34:21", 
                                                                                  "2013-09-04 07:45:06", "2013-09-05 07:07:17", "2013-09-06 08:17:13", "2013-09-07 06:52:11", 
                                                                                  "2013-09-08 07:15:19"), sleep.time = dhours(c(6.74, 7.92, 7.01, 6.23, 6.34, 7.42, 6.45)))
sono #imprimindo o dataframe

#criando uma nova coluna
sono$eficiencia = round(sono$sleep.time/(sono$rise.time - sono$bed.time)*100)

sono #imprimindo novamente o dataframe

#Gerando um plot

par(mar=c(5,4,4,4))
plot(round_date(sono$rise.time,"day"),sono$eficiencia, type="o", col="blue",xlab="Manhã",ylab=NA)
par(new=TRUE)
plot(round_date(sono$rise.time,"day"),sono$sleep.time/3600, type="o", col="red",axes = FALSE, ylab=NA,xlab=NA)
axis(side = 4)
mtext(side= 4, line=2.5, col='red',"Duração do sono")
mtext(side= 2, line=2.5, col='blue',"Eficiência do sono")
