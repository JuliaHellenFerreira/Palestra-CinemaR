# Tidyverse

library(tidyverse)

# Filtrar os países e os meses

base = BD_bilheteria2 %>% 
  group_by(Country,Weekly) %>% 
  
# Simplificar o eixo Y
  
summarise(TotalGross = sum(`Total Gross`/1000000))

############################### Bilheterias Mensais por Países #######################################

pais <- function(data,p = "Brazil"){
Base1 = base %>% 
filter(Country == p)
  
# Ordenar os meses

Base1$Weekly = ordered(Base1$Weekly, levels = c("January","February","March","April","May",
                                                            "June","July",
                                                            "August","September",
                                                            "October","November",
                                                            "December"))
# Fazer gráficos - Brazil
  
## Gráfico de Barras - Brazil
  
barras <- ggplot(Base1,aes(x = Weekly, y = TotalGross))+
  geom_bar(stat = "identity", col = "black", fill = "steelblue")+
  labs(x = "Meses", y = "Bilheteria", title = paste0("Bilheteria Mensal dos filmes nos ", p, " em 2019 em Milhões de Dólares"))
  listadegraficos <- list(barras)
  return(listadegraficos)
}
pais(BD_bilheteria2, p = "Australia")
