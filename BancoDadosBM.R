# Tidyverse

library(tidyverse)

# Qual filme fez maior sucesso em 2019? - Gerar uma tabela com as frequências

tabela = as_tibble(as.data.frame(sort(table(BD_bilheteria2$`#1 Movie`))))
tabela = tabela %>% arrange(desc(Freq))
view(tabela)

################################### Fazer gráficos ##############################

# Gráfico de Barras

# Qual mês teve maior bilhteria?

## EUA

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

# Qual gênero é mais popular no mundo?

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

#Gráfico de setores 

# Qual o gênero predominante?

# Brazil

genero_filme <- function(data, p="Brazil"){
  Base1 = data %>% 
    filter(Country == p) %>% 
    select(Genre)
  return(Base1)
}

SetorBrazil = genero_filme(BD_bilheteria2, p = "Brazil")
W = table(SetorBrazil)

freq <- round(sort(100*W/sum(W)),2)
freq
freq1 <- W
names(freq1) <-  c( names(freq[1:11]))
porc<-round(freq1*100/sum(freq1), 2)
rotulos<-paste(names(freq1),"(",porc,"%)", sep="")
pie(freq1, main="Genêros na Brazil 2019", labels=rotulos, cex=0.7, col=rainbow(8))

genero_filme <- function(data, p="Brazil"){
  Base1 = data %>% 
    filter(Country == p) %>% 
    select(Genre)
  return(Base1)
}

# China

SetorChina = genero_filme(BD_bilheteria2, p = "China")
W = table(SetorChina)

freq <- round(sort(100*W/sum(W)),2)
freq
freq1 <- W
names(freq1) <-  c( names(freq[1:11]))
porc<-round(freq1*100/sum(freq1), 2)
rotulos<-paste(names(freq1),"(",porc,"%)", sep="")
pie(freq1, main="Genêros no China 2019", labels=rotulos, cex=0.7, col=rainbow(8))


# Box plot

# Bilheteria X Gênero

BD_Bilheteria2_2018 %>% 
  filter(Genre %in% c("Action", "Adventure", "Thriller")) %>%
  ggplot(aes(x = Genre, y = `Total Gross`, fill = Genre)) + 
  geom_boxplot(show.legend = FALSE) +
  scale_y_continuous(labels = scales::dollar) +
  scale_x_discrete(limits = c("Action", "Adventure", "Thriller"))+
  labs(title = "Box Plot - Bilheterias dos maiores gêneros 2018")




   






