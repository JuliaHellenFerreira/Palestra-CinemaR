# Analisando

BD_bilheteria2

## Filtrar os meses

MesJan <- BD_bilheteria2[BD_bilheteria2$..1 == "January",]
MesJan
MesFeb <- BD_bilheteria2[BD_bilheteria2$..1 == "February",]
MesFeb
MesMar <- BD_bilheteria2[BD_bilheteria2$..1 == "March",]
MesMar
MesApr <- BD_bilheteria2[BD_bilheteria2$..1 == "April",]
MesApr
MesMay <- BD_bilheteria2[BD_bilheteria2$..1 == "May",]
MesMay
MesJun <- BD_bilheteria2[BD_bilheteria2$..1 == "Jun",]
MesJun
MesJul <- BD_bilheteria2[BD_bilheteria2$..1 == "July",]
MesJul
MesAug <- BD_bilheteria2[BD_bilheteria2$..1 == "August",]
MesAug

# Soma do lucro total de cada mês

sum(MesJan$`Total Gross`)
sum(MesFeb$`Total Gross`)
sum(MesMar$`Total Gross`)
sum(MesApr$`Total Gross`)
sum(MesMay$`Total Gross`)
sum(MesJun$`Total Gross`)
sum(MesJul$`Total Gross`)
sum(MesAug$`Total Gross`)

# Resumo dos meses

summary(MesJan$`Total Gross`)
summary(MesFeb$`Total Gross`)
summary(MesMar$`Total Gross`)
summary(MesMay$`Total Gross`)
summary(MesJun$`Total Gross`)
summary(MesJul$`Total Gross`)
summary(MesAug$`Total Gross`)

# Países e seus lucros mensais ### Teste ###

# Países e seus lucros mensais 

BrazilJan <- BD_bilheteria2[BD_bilheteria2$..1 == "January" & BD_bilheteria2$Country == "Brazil",]
BrazilJan
BrazilFeb <- BD_bilheteria2[BD_bilheteria2$..1 == "February" & BD_bilheteria2$Country == "Brazil"]
BrazilFeb
BrazilMar <- BD_bilheteria2[BD_bilheteria2$..1 == "March" & BD_bilheteria2$Country == "Brazil"]
BrazilMar
