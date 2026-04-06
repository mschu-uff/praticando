# Script da aula 7 - 06/04 para praticar uso de brnaches no Git e GitHub

# Leitura e manipulação dos dados ------------------------------------

df <- read.csv("dados-aula-7-limpos.csv", header=TRUE, sep=",")
str(df)
head(df)
summary(df)

df$imc <- df$peso / ((df$altura/100)^2)

df$faixa_etaria <- cut(df$idade,
                       breaks=c(0, 30, 60, 100),
                       labels=c("Jovem", "Adulto", "Idoso"),
                       right=FALSE)

# Distribuições de frequência e gráficos -----------------------------

table(df$sexo)
barplot(table(df$faixa_etaria, df$sexo), beside=TRUE, legend=TRUE)
hist(df$altura)
boxplot(df$imc ~ df$sexo)
plot(df$altura, df$peso, col=factor(df$sexo))

# Medidas descritivas ------------------------------------------------

# (PREENCHER NA BRANCH analise-medidas)