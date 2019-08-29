# Analisando

BD_bilheteria2

## Filtrar os meses

MesJan <- BD_bilheteria2[BD_bilheteria2$Weekly == "January",]
MesJan
MesFeb <- BD_bilheteria2[BD_bilheteria2$Weekly == "February",]
MesFeb
MesMar <- BD_bilheteria2[BD_bilheteria2$Weekly == "March",]
MesMar
MesApr <- BD_bilheteria2[BD_bilheteria2$Weekly == "April",]
MesApr
MesMay <- BD_bilheteria2[BD_bilheteria2$Weekly == "May",]
MesMay
MesJun <- BD_bilheteria2[BD_bilheteria2$Weekly == "Jun",]
MesJun
MesJul <- BD_bilheteria2[BD_bilheteria2$Weekly == "July",]
MesJul
MesAug <- BD_bilheteria2[BD_bilheteria2$Weekly == "August",]
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

## Brazil

BrazilJan <- BD_bilheteria2[BD_bilheteria2$Weekly == "January" & BD_bilheteria2$Country == "Brazil",]
BrazilJan
BrazilFeb <- BD_bilheteria2[BD_bilheteria2$Weekly == "February" & BD_bilheteria2$Country == "Brazil",]
BrazilFeb
BrazilMar <- BD_bilheteria2[BD_bilheteria2$Weekly == "March" & BD_bilheteria2$Country == "Brazil",]
BrazilMar
BrazilApr <- BD_bilheteria2[BD_bilheteria2$Weekly == "April" & BD_bilheteria2$Country == "Brazil",]
BrazilApr
BrazilMay <- BD_bilheteria2[BD_bilheteria2$Weekly == "May" & BD_bilheteria2$Country == "Brazil",]
BrazilMay
BrazilJun <- BD_bilheteria2[BD_bilheteria2$Weekly == "June" & BD_bilheteria2$Country == "Brazil",]
BrazilJun
BrazilJul <- BD_bilheteria2[BD_bilheteria2$Weekly == "July" & BD_bilheteria2$Country == "Brazil",]
BrazilJul
BrazilAug <- BD_bilheteria2[BD_bilheteria2$Weekly == "August" & BD_bilheteria2$Country == "Brazil",]
BrazilAug

## Argentina

ArgentinaJan <- BD_bilheteria2[BD_bilheteria2$Weekly == "January" & BD_bilheteria2$Country == "Argentina",]
ArgentinaJan
ArgentinaFeb <- BD_bilheteria2[BD_bilheteria2$Weekly == "February" & BD_bilheteria2$Country == "Argentina",]
ArgentinaFeb
ArgentinaMar <- BD_bilheteria2[BD_bilheteria2$Weekly == "March" & BD_bilheteria2$Country == "Argentina",]
ArgentinaMar
ArgentinaApr <- BD_bilheteria2[BD_bilheteria2$Weekly == "April" & BD_bilheteria2$Country == "Argentina",]
ArgentinaApr
ArgentinaMay <- BD_bilheteria2[BD_bilheteria2$Weekly == "May" & BD_bilheteria2$Country == "Argentina",]
ArgentinaMay
ArgentinaJun <- BD_bilheteria2[BD_bilheteria2$Weekly == "June" & BD_bilheteria2$Country == "Argentina",]
ArgentinaJun
ArgentinaJul <- BD_bilheteria2[BD_bilheteria2$Weekly == "July" & BD_bilheteria2$Country == "Argentina",]
ArgentinaJul
ArgentinaAug <- BD_bilheteria2[BD_bilheteria2$Weekly == "August" & BD_bilheteria2$Country == "Argentina",]
ArgentinaAug

## China

ChinaJan <- BD_bilheteria2[BD_bilheteria2$Weekly == "January" & BD_bilheteria2$Country == "China",]
ChinaJan
ChinaFeb <- BD_bilheteria2[BD_bilheteria2$Weekly == "February" & BD_bilheteria2$Country == "China",]
ChinaFeb
ChinaMar <- BD_bilheteria2[BD_bilheteria2$Weekly == "March" & BD_bilheteria2$Country == "China",]
ChinaMar
ChinaApr <- BD_bilheteria2[BD_bilheteria2$Weekly == "April" & BD_bilheteria2$Country == "China",]
ChinaApr
ChinaMay <- BD_bilheteria2[BD_bilheteria2$Weekly == "May" & BD_bilheteria2$Country == "China",]
ChinaMay
ChinaJun <- BD_bilheteria2[BD_bilheteria2$Weekly == "June" & BD_bilheteria2$Country == "China",]
ChinaJun
ChinaJul <- BD_bilheteria2[BD_bilheteria2$Weekly == "July" & BD_bilheteria2$Country == "China",]
ChinaJul
ChinaAug <- BD_bilheteria2[BD_bilheteria2$Weekly == "August" & BD_bilheteria2$Country == "China",]
ChinaAug

## USA

USAJan <- BD_bilheteria2[BD_bilheteria2$Weekly == "January" & BD_bilheteria2$Country == "USA",]
USAJan
USAFeb <- BD_bilheteria2[BD_bilheteria2$Weekly == "February" & BD_bilheteria2$Country == "USA",]
USAFeb
USAMar <- BD_bilheteria2[BD_bilheteria2$Weekly == "March" & BD_bilheteria2$Country == "USA",]
USAMar
USAApr <- BD_bilheteria2[BD_bilheteria2$Weekly == "April" & BD_bilheteria2$Country == "USA",]
USAApr
USAMay <- BD_bilheteria2[BD_bilheteria2$Weekly == "May" & BD_bilheteria2$Country == "USA",]
USAMay
USAJun <- BD_bilheteria2[BD_bilheteria2$Weekly == "June" & BD_bilheteria2$Country == "USA",]
USAJun
USAJul <- BD_bilheteria2[BD_bilheteria2$Weekly == "July" & BD_bilheteria2$Country == "USA",]
USAJul
USAAug <- BD_bilheteria2[BD_bilheteria2$Weekly == "August" & BD_bilheteria2$Country == "USA",]
USAAug

## Germany

GermanyJan <- BD_bilheteria2[BD_bilheteria2$Weekly == "January" & BD_bilheteria2$Country == "Germany",]
GermanyJan
GermanyFeb <- BD_bilheteria2[BD_bilheteria2$Weekly == "February" & BD_bilheteria2$Country == "Germany",]
GermanyFeb
GermanyMar <- BD_bilheteria2[BD_bilheteria2$Weekly == "March" & BD_bilheteria2$Country == "Germany",]
GermanyMar
GermanyApr <- BD_bilheteria2[BD_bilheteria2$Weekly == "April" & BD_bilheteria2$Country == "Germany",]
GermanyApr
GermanyMay <- BD_bilheteria2[BD_bilheteria2$Weekly == "May" & BD_bilheteria2$Country == "Germany",]
GermanyMay
GermanyJun <- BD_bilheteria2[BD_bilheteria2$Weekly == "June" & BD_bilheteria2$Country == "Germany",]
GermanyJun
GermanyJul <- BD_bilheteria2[BD_bilheteria2$Weekly == "July" & BD_bilheteria2$Country == "Germany",]
GermanyJul
GermanyAug <- BD_bilheteria2[BD_bilheteria2$Weekly == "August" & BD_bilheteria2$Country == "Germany",]
GermanyAug

## South Africa

SouthAfricaJan <- BD_bilheteria2[BD_bilheteria2$Weekly == "January" & BD_bilheteria2$Country == "South Africa",]
SouthAfricaJan
SouthAfricaFeb <- BD_bilheteria2[BD_bilheteria2$Weekly == "February" & BD_bilheteria2$Country == "South Africa",]
SouthAfricaFeb
SouthAfricaMar <- BD_bilheteria2[BD_bilheteria2$Weekly == "March" & BD_bilheteria2$Country == "South Africa",]
SouthAfricaMar
SouthAfricaApr <- BD_bilheteria2[BD_bilheteria2$Weekly == "April" & BD_bilheteria2$Country == "South Africa",]
SouthAfricaApr
SouthAfricaMay <- BD_bilheteria2[BD_bilheteria2$Weekly == "May" & BD_bilheteria2$Country == "South Africa",]
SouthAfricaMay
SouthAfricaJun <- BD_bilheteria2[BD_bilheteria2$Weekly == "June" & BD_bilheteria2$Country == "South Africa",]
SouthAfricaJun
SouthAfricaJul <- BD_bilheteria2[BD_bilheteria2$Weekly == "July" & BD_bilheteria2$Country == "South Africa",]
SouthAfricaJul
SouthAfricaAug <- BD_bilheteria2[BD_bilheteria2$Weekly == "August" & BD_bilheteria2$Country == "South Africa",]
SouthAfricaAug

## Australia

AustraliaJan <- BD_bilheteria2[BD_bilheteria2$Weekly == "January" & BD_bilheteria2$Country == "Australia",]
AustraliaJan
AustraliaFeb <- BD_bilheteria2[BD_bilheteria2$Weekly == "February" & BD_bilheteria2$Country == "Australia",]
AustraliaFeb
AustraliaMar <- BD_bilheteria2[BD_bilheteria2$Weekly == "March" & BD_bilheteria2$Country == "Australia",]
AustraliaMar
AustraliaApr <- BD_bilheteria2[BD_bilheteria2$Weekly == "April" & BD_bilheteria2$Country == "Australia",]
AustraliaApr
AustraliaMay <- BD_bilheteria2[BD_bilheteria2$Weekly == "May" & BD_bilheteria2$Country == "Australia",]
AustraliaMay
AustraliaJun <- BD_bilheteria2[BD_bilheteria2$Weekly == "June" & BD_bilheteria2$Country == "Australia",]
AustraliaJun
AustraliaJul <- BD_bilheteria2[BD_bilheteria2$Weekly == "July" & BD_bilheteria2$Country == "Australia",]
AustraliaJul
AustraliaAug <- BD_bilheteria2[BD_bilheteria2$Weekly == "August" & BD_bilheteria2$Country == "Australia",]
AustraliaAug







