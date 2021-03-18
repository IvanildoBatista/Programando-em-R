#Trabalhando com o pacote GGPPLOT2

#Instalando o pacote

install.packages("ggplot2")
library(ggplot2)

#Plotando um gráfico básico
data(tips, package = 'reshape2')
qplot(total_bill, tip, data=tips, geom = "point")

#Criando camadas

#Camada 1

camada1 = geom_point(mapping = aes(x=total_bill, y=tip, color=sex), data = tips,
                     size=3)
ggplot() + camada1

#Construindo um modelo de regressão

modelo_base = lm(tip~total_bill, data=tips)
modelo_fit = data.frame(total_bill=tips$total_bill, 
                        predict(modelo_base,interval="confidence"))

head(modelo_fit)

#Camada 2

camada2 = geom_line(mapping=aes(x=total_bill, y=fit),
                    data=modelo_fit, color='darkred')

ggplot() + camada1 + camada2

#Camada 3

camada3 = geom_ribbon(mapping = aes(x=total_bill, ymin = lwr, ymax = upr),
                      data=modelo_fit, alpha=0.3)

ggplot() + camada1 + camada2 + camada3

#Versão final otimizada

ggplot(tips, aes(x=total_bill, y=tip))+
  geom_point(aes(color=sex))+
  geom_smooth(method = 'lm')

#Gravando em um objeto

myplot = ggplot(tips, aes(x=total_bill, y=tip))+
  geom_point(aes(color=sex))+
  geom_smooth(method = 'lm')

print(myplot)

class(myplot)