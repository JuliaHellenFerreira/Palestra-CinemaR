# Tidyverse

library(tidyverse)

# Filtrar os países e os meses

base1 = BD_Bilheteria2_20_202018 %>% 
  group_by(Country,Weekly) %>% 
  
# Simplificar o eixo Y

summarise(TotalGross = sum(`Total Gross`/1000000))

BaseBrazil = base1 %>% 
  filter(Country == "USA")

BaseBrazil

# Ordenar os meses 

BaseBrazil$Weekly = ordered(BaseBrazil$Weekly, levels = c("January","February","March","April","May",
                                                          "June","July",
                                                          "August","September",
                                                          "October","November",
                                                          "December"))
# Fazer gráficos 

## Gráfico de Barras

ggplot(BaseBrazil,aes(x = Weekly, y = TotalGross))+
  geom_bar(stat = "identity", col = "black", fill = "steelblue")+
  labs(x = "Meses", y = "Bilheteria", title = "Bilheteria Mensal dos filmes nos USA em 2018 em Milhões de Dólares")


