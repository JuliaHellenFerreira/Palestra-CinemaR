# Tidyverse

library(tidyverse)

BD_bilheteria2


# Qual filme fez maior sucesso em 2019? - Gerar uma tabela com as frequências

tabela = as_tibble(as.data.frame(sort(table(BD_bilheteria2$`#1 Movie`))))
tabela = tabela %>% arrange(desc(Freq))
view(tabela)

###### Fazer gráficos

# Gráfico de Barras

## EUA - 

base1 = BD_bilheteria2 %>% 
  group_by(Country,Weekly) %>% 
  summarise(TotalGross = sum(`Total Gross`/1000000))
BaseBrazil = base1 %>% 
  filter(Country == "USA")
BaseBrazil

BaseBrazil$Weekly = ordered(BaseBrazil$Weekly, levels = c("January","February","March","April","May",
                                                          "June","July",
                                                          "August","September",
                                                          "October","November",
                                                          "December"))

ggplot(BaseBrazil,aes(x = Weekly, y = TotalGross))+
  geom_bar(stat = "identity", col = "black", fill = "red")+
  labs(x = "Meses", y = "Bilheteria", title = "Bilheteria Mensal dos filmes nos USA em 2018 em Milhões de Dólares")

# Brazil

base1 = BD_bilheteria2 %>% 
  group_by(Country,Weekly) %>% 
  summarise(TotalGross = sum(`Total Gross`/1000000))
BaseBrazil = base1 %>% 
  filter(Country == "Brazil")
BaseBrazil

BaseBrazil$Weekly = ordered(BaseBrazil$Weekly, levels = c("January","February","March","April","May",
                                                          "June","July",
                                                          "August","September",
                                                          "October","November",
                                                          "December"))

ggplot(BaseBrazil,aes(x = Weekly, y = TotalGross))+
  geom_bar(stat = "identity", col = "black", fill = "blue")+
  labs(x = "Meses", y = "Bilheteria", title = "Bilheteria Mensal dos filmes na Brazil em 2018 em Milhões de Dólares")

# Argentina

base1 = BD_bilheteria2 %>% 
  group_by(Country,Weekly) %>% 
  summarise(TotalGross = sum(`Total Gross`/1000000))
BaseBrazil = base1 %>% 
  filter(Country == "Argentina")
BaseBrazil

BaseBrazil$Weekly = ordered(BaseBrazil$Weekly, levels = c("January","February","March","April","May",
                                                          "June","July",
                                                          "August","September",
                                                          "October","November",
                                                          "December"))

ggplot(BaseBrazil,aes(x = Weekly, y = TotalGross))+
  geom_bar(stat = "identity", col = "black", fill = "black")+
  labs(x = "Meses", y = "Bilheteria", title = "Bilheteria Mensal nos filmes na Argentina em 2018 em Milhões de Dólares")

# China


base1 = BD_bilheteria2 %>% 
  group_by(Country,Weekly) %>% 
  summarise(TotalGross = sum(`Total Gross`/1000000))
BaseBrazil = base1 %>% 
  filter(Country == "China")
BaseBrazil

BaseBrazil$Weekly = ordered(BaseBrazil$Weekly, levels = c("January","February","March","April","May",
                                                          "June","July",
                                                          "August","September",
                                                          "October","November",
                                                          "December"))

ggplot(BaseBrazil,aes(x = Weekly, y = TotalGross))+
  geom_bar(stat = "identity", col = "black", fill = "black")+
  labs(x = "Meses", y = "Bilheteria", title = "Bilheteria Mensal dos filmes nos China em 2018 em Milhões de Dólares")

# Germany

base1 = BD_bilheteria2 %>% 
  group_by(Country,Weekly) %>% 
  summarise(TotalGross = sum(`Total Gross`/1000000))
BaseBrazil = base1 %>% 
  filter(Country == "Germany")
BaseBrazil

BaseBrazil$Weekly = ordered(BaseBrazil$Weekly, levels = c("January","February","March","April","May",
                                                          "June","July",
                                                          "August","September",
                                                          "October","November",
                                                          "December"))

ggplot(BaseBrazil,aes(x = Weekly, y = TotalGross))+
  geom_bar(stat = "identity", col = "black", fill = "black")+
  labs(x = "Meses", y = "Bilheteria", title = "Bilheteria Mensal dos filmes na Germany em 2018 em Milhões de Dólares")

# South Africa


base1 = BD_bilheteria2 %>% 
  group_by(Country,Weekly) %>% 
  summarise(TotalGross = sum(`Total Gross`/1000000))
BaseBrazil = base1 %>% 
  filter(Country == "South Africa")
BaseBrazil

BaseBrazil$Weekly = ordered(BaseBrazil$Weekly, levels = c("January","February","March","April","May",
                                                          "June","July",
                                                          "August","September",
                                                          "October","November",
                                                          "December"))

ggplot(BaseBrazil,aes(x = Weekly, y = TotalGross))+
  geom_bar(stat = "identity", col = "black", fill = "black")+
  labs(x = "Meses", y = "Bilheteria", title = "Bilheteria Mensal dos filmes na South Africa em 2018 em Milhões de Dólares")

### Australia

base1 = BD_bilheteria2 %>% 
  group_by(Country,Weekly) %>% 
  summarise(TotalGross = sum(`Total Gross`/1000000))
BaseBrazil = base1 %>% 
  filter(Country == "Australia")
BaseBrazil

BaseBrazil$Weekly = ordered(BaseBrazil$Weekly, levels = c("January","February","March","April","May",
                                                          "June","July",
                                                          "August","September",
                                                          "October","November",
                                                          "December"))

ggplot(BaseBrazil,aes(x = Weekly, y = TotalGross))+
  geom_bar(stat = "identity", col = "black", fill = "black")+
  labs(x = "Meses", y = "Bilheteria", title = "Bilheteria Mensal dos filmes na Australia em 2018 em Milhões de Dólares")

## Barras Horizontal

# Qual gênero é mais popular no mundo? - Não está rodando 

x <-  table(BD_bilheteria2$Genre)
x <- sort(x)
class(x)
par(mar=c(5,6.5,4,2))
barplot(x,
        horiz = TRUE,
        xlab = "Genre",
        col = c("turquoise", "pink"),
        las =1
)
box(bty = "L", las = 0.5)

### Antes do tratramento ### 

y <- table(BD_bilheteria2$Genre)
class(y)
pie(y)
title("Gênero - Mundial")

### Tratamento do gráficos de setores ###

# Selecionar gênero:

# Filtrar pelo país e os gêneros 

genero_filme <- function(data, p="Brazil"){
  Base1 = data %>% 
    dplyr::select(Genre)
  return(Base1)
}
genero_filme(BD_bilheteria2, p = "Brazil")

# Dados para o gráfico - Brazil 

freq <- round(sort(100*y/sum(y)),2)
freq

generos <- as.vector(freq)
names(freq)
pie(freq)

# Box plot

BD_bilheteria2 %>% 
  filter(Genre %in% c("Action", "Adventure", "Thriller")) %>%
  ggplot() + 
  geom_boxplot(aes(x = Genre, y = `Total Gross`, fill = Genre), show.legend = FALSE) +
  scale_y_continuous(labels = scales::dollar) +
  scale_x_discrete(
    limits = c("Action", "Adventure", "Thriller")
  )