# Tidyverse

library(tidyverse)

# Filtrar os países e os meses

base = BD_bilheteria2 %>% 
  group_by(Country,Weekly) %>% 
  
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

# Selecionar gênero:

genero_filme <- function(data, p="Brazil"){
  Base1 = data %>% 
    dplyr::select(Genere)
  return(Base1)
}

genero_filme(BD_bilheteria2, p = "Brazil")  



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

### Gráfico de Barras - Horizontal

## Barras Horizontal

x <- table(BD_bilheteria2$Genere)
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
y <- table(BD_bilheteria2$Genere)
class(y)
pie(y)

### Tratamento do gráficos de setores ###



# imdb %>% 
#   filter(diretor == "Steven Spielberg") %>%
#   group_by(ano) %>% 
#   summarise(nota_media = mean(nota_imdb, na.rm = TRUE)) %>% 
#   ggplot() +
#   geom_line(aes(x = ano, y = nota_media))


# imdb %>% 
#   filter(filmes %in% c("Captain Marvel", "Spider-Man: Into The Spider-Verse", "Avengers: Endgame", "Spider-Man: Far from Home")) %>%
#   ggplot() + 
#   geom_boxplot(aes(x = Filmes, y = Bilheterias))
