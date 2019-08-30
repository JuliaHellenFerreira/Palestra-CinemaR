# Analisando...

## Filtrar os meses - Assim podemos ver as bilheterias mundiais por mês.

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

# Soma do lucro total de cada mês - Podemos fazer uma soma dos países repetidos 

sum(MesJan$`Total Gross`)
sum(MesFeb$`Total Gross`)
sum(MesMar$`Total Gross`)
sum(MesApr$`Total Gross`)
sum(MesMay$`Total Gross`)
sum(MesJun$`Total Gross`)
sum(MesJul$`Total Gross`)
sum(MesAug$`Total Gross`)

# Resumo dos meses - Saber as informações basicas

summary(MesJan$`Total Gross`)
summary(MesFeb$`Total Gross`)
summary(MesMar$`Total Gross`)
summary(MesMay$`Total Gross`)
summary(MesJun$`Total Gross`)
summary(MesJul$`Total Gross`)
summary(MesAug$`Total Gross`)

# Países e suas bilheterias mensais ( Meses repetidos) 

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

# Países - Conhecer as informações do país 

Brazil <- BD_bilheteria2[BD_bilheteria2$Country == "Brazil",]
Brazil
Argentina <- BD_bilheteria2[BD_bilheteria2$Country == "Argentina",]
Argentina
China <- BD_bilheteria2[BD_bilheteria2$Country == "China",]
China
USA <- BD_bilheteria2[BD_bilheteria2$Country == "USA",]
USA
Germany <- BD_bilheteria2[BD_bilheteria2$Country == "Germany",]
Germany
SouthAfrica <- BD_bilheteria2[BD_bilheteria2$Country == "South Africa",]
SouthAfrica
Australia <- BD_bilheteria2[BD_bilheteria2$Country == "Australia",]
Australia

# Bilhterias mensais por países ( Sem repetição de meses)

# Brazil

Total = c( sum(BrazilJan$`Total Gross`),
           sum(BrazilFeb$`Total Gross`),
           sum(BrazilMar$`Total Gross`),
           sum(BrazilApr$`Total Gross`),
           sum(BrazilMay$`Total Gross`),
           sum(BrazilJun$`Total Gross`),
           sum(BrazilJul$`Total Gross`),
           sum(BrazilAug$`Total Gross`)
           )
Meses  = month.name[1:8]
total_tabela1 = data.frame()
total_tabela1 = cbind(Meses,Total);View(total_tabela1)
BrazilTotal = rbind(BrazilJan,BrazilFeb, BrazilMar, BrazilApr, BrazilMay,BrazilJun, BrazilJul, BrazilAug)
BrazilTotal$Total.Gross
BrazilTotal

# Argentina

Total = c( sum(ArgentinaJan$`Total Gross`),
           sum(ArgentinaFeb$`Total Gross`),
           sum(ArgentinaMar$`Total Gross`),
           sum(ArgentinaApr$`Total Gross`),
           sum(ArgentinaMay$`Total Gross`),
           sum(ArgentinaJun$`Total Gross`),
           sum(ArgentinaJul$`Total Gross`),
           sum(ArgentinaAug$`Total Gross`)
)
total_tabela2 <- data.frame()
total_tabela2 <- cbind(Meses,Total);View(total_tabela)
ArgentinaTotal <- rbind(ArgentinaJan, ArgentinaFeb, ArgentinaMar, ArgentinaApr, ArgentinaMay,ArgentinaJun, ArgentinaJul, ArgentinaAug)
ArgentinaTotal$Total.Gross
ArgentinaTotal


# Gráficos

# Gráfico de Barras - Em que época mais se faturou?

