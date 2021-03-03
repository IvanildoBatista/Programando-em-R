#BIG DATA NA PRÁTICA

#Instalando as bibliotecas

install.packages('readr')
install.packages('dplyr')
install.packages('ggplot2')
install.packages('scales')
install.packages('data.table')
install.packages('dtplyr')

#Chamando os pacotes

library(readr)
library(dplyr)
library(ggplot2)
library(scales)
library(data.table)
library(dtplyr)

#Importando a base de dados

df = fread('C:/Users/junio/TemperaturasGlobais.csv')

df #base de dados

View(df)


#Criando um subset dos dados

CidadesBrasil = subset(df, Country=='Brazil')
CidadesBrasil = na.omit(CidadesBrasil) #eliminando os valores missing

head(CidadesBrasil) #primeiras linhas da base de dados
nrow(df) #número de linha da base original
nrow(CidadesBrasil) #número de linha da nova base de dados
dim(CidadesBrasil) #dimensões da nova base de dados


#Preparação e Organização dos dados

#alterando o formato dos dados
CidadesBrasil$dt = as.POSIXct(CidadesBrasil$dt,format = '%Y-%m-%d')

#criando nova coluna de meses
CidadesBrasil$Month = month(CidadesBrasil$dt)

#criando nova coluna de anos
CidadesBrasil$Year = year(CidadesBrasil$dt)

#Carregando Subsets da capitais do Nordeste

#Maranhão (MA) - São Luís
slu = subset(CidadesBrasil, City='São Luís')
slu = subset(slu, Year %in% c(1796,1846,1896,1946,1996,2012))


#Piauí (PI) - Teresina
pia = subset(CidadesBrasil, City='Teresina')
pia = subset(pia, Year %in% c(1796,1846,1896,1946,1996,2012))

#Ceará (CE) - Fortaleza
forta = subset(CidadesBrasil, City='Fortaleza')
forta = subset(forta, Year %in% c(1796,1846,1896,1946,1996,2012))

#Rio Grande do Norte (RN) - Natal
nat = subset(CidadesBrasil, City='Natal')
nat = subset(nat, Year %in% c(1796,1846,1896,1946,1996,2012))

#Paraíba (PB) - João Pessoa
jpes = subset(CidadesBrasil, City='João Pessoa')
jpes = subset(jpes, Year %in% c(1796,1846,1896,1946,1996,2012))

#Pernambuco (PE) - Recife
recf = subset(CidadesBrasil, City='Recife')
recf = subset(recf, Year %in% c(1796,1846,1896,1946,1996,2012))

#Alagoas (AL) - Maceió
mace = subset(CidadesBrasil, City='Maceió')
mace = subset(mace, Year %in% c(1796,1846,1896,1946,1996,2012))

#Sergipe (SE) - Aracaju
arac = subset(CidadesBrasil, City='Aracaju')
arac = subset(arac, Year %in% c(1796,1846,1896,1946,1996,2012))

#Bahia (BA) - Salvador
salv = subset(CidadesBrasil, City='Salvador')
salv = subset(salv, Year %in% c(1796,1846,1896,1946,1996,2012))

#CRIANDO GRÁFICOS PARA SÉRIE DE TEMPERATURA DE CADA CAPITAL

p_slu = ggplot(slu, aes(x=Month, y=AverageTemperature, color=as.factor(Year)))+
  geom_smooth(se=FALSE, fill=NA, size=2)+
  theme_light(base_size = 20)+
  xlab("Mês")+
  ylab("Temperatura Média")+
  scale_color_discrete(" ")+
  ggtitle("Temperatura média ao longo dos anos em São Luís")+
  theme(plot.title = element_text(size=18))

p_pia = ggplot(pia, aes(x=Month, y=AverageTemperature, color=as.factor(Year)))+
  geom_smooth(se=FALSE, fill=NA, size=2)+
  theme_light(base_size = 20)+
  xlab("Mês")+
  ylab("Temperatura Média")+
  scale_color_discrete(" ")+
  ggtitle("Temperatura média ao longo dos anos em Teresina")+
  theme(plot.title = element_text(size=18))

p_forta = ggplot(forta, aes(x=Month, y=AverageTemperature, color=as.factor(Year)))+
  geom_smooth(se=FALSE, fill=NA, size=2)+
  theme_light(base_size = 20)+
  xlab("Mês")+
  ylab("Temperatura Média")+
  scale_color_discrete(" ")+
  ggtitle("Temperatura média ao longo dos anos em Fortaleza")+
  theme(plot.title = element_text(size=18))

p_nat = ggplot(nat, aes(x=Month, y=AverageTemperature, color=as.factor(Year)))+
  geom_smooth(se=FALSE, fill=NA, size=2)+
  theme_light(base_size = 20)+
  xlab("Mês")+
  ylab("Temperatura Média")+
  scale_color_discrete(" ")+
  ggtitle("Temperatura média ao longo dos anos em Natal")+
  theme(plot.title = element_text(size=18))

p_jpes = ggplot(jpes, aes(x=Month, y=AverageTemperature, color=as.factor(Year)))+
  geom_smooth(se=FALSE, fill=NA, size=2)+
  theme_light(base_size = 20)+
  xlab("Mês")+
  ylab("Temperatura Média")+
  scale_color_discrete(" ")+
  ggtitle("Temperatura média ao longo dos anos em João Pessoa")+
  theme(plot.title = element_text(size=18))

p_recf = ggplot(recf, aes(x=Month, y=AverageTemperature, color=as.factor(Year)))+
  geom_smooth(se=FALSE, fill=NA, size=2)+
  theme_light(base_size = 20)+
  xlab("Mês")+
  ylab("Temperatura Média")+
  scale_color_discrete(" ")+
  ggtitle("Temperatura média ao longo dos anos em Recife")+
  theme(plot.title = element_text(size=18))

p_mace = ggplot(mace, aes(x=Month, y=AverageTemperature, color=as.factor(Year)))+
  geom_smooth(se=FALSE, fill=NA, size=2)+
  theme_light(base_size = 20)+
  xlab("Mês")+
  ylab("Temperatura Média")+
  scale_color_discrete(" ")+
  ggtitle("Temperatura média ao longo dos anos em Maceió")+
  theme(plot.title = element_text(size=18))

p_arac = ggplot(arac, aes(x=Month, y=AverageTemperature, color=as.factor(Year)))+
  geom_smooth(se=FALSE, fill=NA, size=2)+
  theme_light(base_size = 20)+
  xlab("Mês")+
  ylab("Temperatura Média")+
  scale_color_discrete(" ")+
  ggtitle("Temperatura média ao longo dos anos em Aracajú")+
  theme(plot.title = element_text(size=18))

p_salv = ggplot(salv, aes(x=Month, y=AverageTemperature, color=as.factor(Year)))+
  geom_smooth(se=FALSE, fill=NA, size=2)+
  theme_light(base_size = 20)+
  xlab("Mês")+
  ylab("Temperatura Média")+
  scale_color_discrete(" ")+
  ggtitle("Temperatura média ao longo dos anos em Salvador")+
  theme(plot.title = element_text(size=18))

#Imprimindo os gráficos

p_slu
p_pia
p_forta
p_nat
p_jpes
p_recf
p_mace
p_arac
p_salv