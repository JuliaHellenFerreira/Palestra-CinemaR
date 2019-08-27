# Analisando

BD_bilheteria2

## Filtrar os meses

MesJan <- BD_bilheteria2[BD_bilheteria2$Week == "January",]
MesJan
MesFeb <- BD_bilheteria2[BD_bilheteria2$Week == "February",]
MesFeb
MesMar <- BD_bilheteria2[BD_bilheteria2$Week == "March",]
MesMar
MesApr <- BD_bilheteria2[BD_bilheteria2$Week == "April",]
MesApr
MesMay <- BD_bilheteria2[BD_bilheteria2$Week == "May",]
MesMay
MesJun <- BD_bilheteria2[BD_bilheteria2$Week == "Jun",]
MesJun
MesJul <- BD_bilheteria2[BD_bilheteria2$Week == "July",]
MesJul
MesAug <- BD_bilheteria2[BD_bilheteria2$Week == "August",]
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

# Países e suas bilheterias mensais 

BrazilJan <- BD_bilheteria2[BD_bilheteria2$Week == "January" & BD_bilheteria2$Country == "Brazil",]
BrazilJan
BrazilFeb <- BD_bilheteria2[BD_bilheteria2$Week == "February" & BD_bilheteria2$Country == "Brazil",]
BrazilFeb
BrazilMar <- BD_bilheteria2[BD_bilheteria2$Week == "March" & BD_bilheteria2$Country == "Brazil",]
BrazilMar
BrazilApr <- BD_bilheteria2[BD_bilheteria2$Week == "April" & BD_bilheteria2$Country == "Brazil",]
BrazilApr
BrazilMay <- BD_bilheteria2[BD_bilheteria2$Week == "May" & BD_bilheteria2$Country == "Brazil",]
BrazilMay
BrazilJun <- BD_bilheteria2[BD_bilheteria2$Week == "June" & BD_bilheteria2$Country == "Brazil",]
BrazilJun
BrazilJul <- BD_bilheteria2[BD_bilheteria2$Week == "July" & BD_bilheteria2$Country == "Brazil",]
BrazilJul
BrazilAug <- BD_bilheteria2[BD_bilheteria2$Week == "August" & BD_bilheteria2$Country == "Brazil",]
BrazilAug