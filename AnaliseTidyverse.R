# Tidyverse

install.packages("tidyverse")
BD_bilheteria2

# Filtrar os países e os meses

head(BD_bilheteria2)
require(tidyverse)

# Qual filme fez maior sucesso em 2019?

barplot(sort(table(BD_bilheteria2$`#1 Movie`)))
tabela = as_tibble(as.data.frame(sort(table(BD_bilheteria2$`#1 Movie`))))
tabela = tabela %>% arrange(desc(Freq))
view(tabela)

# Brazil

base = BD_bilheteria2 %>% 
  group_by(Country,Weekly) %>% 
  summarise(TotalGross = sum(`Total Gross`/1000000))
BaseBrazil = base %>% 
  filter(Country == "Brazil")
BaseBrazil

#USA

base = BD_bilheteria2 %>% 
  group_by(Country,Weekly) %>% 
  summarise(TotalGross = sum(`Total Gross`/1000000))
BaseBrazil = base %>% 
  filter(Country == "USA")
BaseBrazil


# Simplificar o eixo Y
  
summarise(TotalGross = sum(`Total Gross`/1000000))

############################### Bilheterias Mensais por Países #######################################

# Selecionar o país:

pais <- function(data,p = "Brazil"){
Base1 = data %>% 
dplyr::filter(Country == p)
return(Base1)
}
pais(BD_bilheteria2, p = "Brazil")  

# Ordenar os meses

base$Weekly = ordered(base$Weekly, levels = c("January","February","March","April","May",
                                                            "June","July",
                                                            "August","September",
                                                            "October","November",
                                                            "December"))
# Fazer gráficos - Brazil
  
## Gráfico de Barras

### EUA

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

### Brazil

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

### Argentina

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

### China


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

### Germany


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

### South Africa


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

x <- table(BD_bilheteria2$Genre)
x <- sort(x)
class(x)
par(mar=c(5,6.5,4,2))
barplot(x,
        horiz = TRUE,
        xlab = "Frequência Absoluta",
        col = c("seagreen", "#FF9911"),
        las=1
        )

## Gráfico de Setores

### Antes do tratramento ### 

y <- table(BD_bilheteria2$Genre)
class(y)
pie(y)

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

## Tratando - Brazil

freq1 <- c(sum(generos[1 : 4]), generos[5:11])
names(freq1) <-  c("Outros", names(freq[5:11]))

porc<-round(freq1*100/sum(freq1), 2)
rotulos<-paste(names(freq1),"(",porc,"%)", sep="")
pie(freq1, main="Genêros no Brasil", labels=rotulos, cex=0.7, col=rainbow(8))

# Gráfico de Linha

### Soma sem repetição dos meses

#base1 = BD_bilheteria2 %>% 
  #group_by(`Total Gross`,Weekly, Country) %>% 
  #summarise(TotalGross = sum(`Total Gross`/1000000))

# January - Brazil

JanBra = base1 %>% 
  filter(Weekly == "January", Country == "Brazil")
JanBra <- sum(JanBra[1])

# February

February = base1 %>% 
  filter(Weekly == "February")
February <- sum(February[1])

# March 

March = base1 %>% 
  filter(Weekly == "March")
March <- sum(March[1])

# April

 April = base1 %>% 
  filter(Weekly == "April")
April <- sum(April[1])

# May

May = base1 %>% 
  filter(Weekly == "May")
May <- sum(May[1])

# June

May = base1 %>% 
  filter(Weekly == "May")
May <- sum(May[1])


# Teste

mes<-1:5
bilh<-c(January, February, March, April, May)
dados <- data.frame(mes, bilh, grupo=factor(c(rep(1, 5))) )
p=ggplot(dados, aes(x = mes, y = bilh, group = grupo))
p + geom_line(color = 2) #podemos especificar a cor da linha
  