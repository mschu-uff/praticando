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

# (PREENCHER NA BRANCH analise-graficos)

# Medidas descritivas ------------------------------------------------

analise_quantitativa <- function(x) c("Mínimo"=min(x),
                                      "Máximo"=max(x),
                                      "Mediana"=median(x),
                                      "Média"=mean(x),
                                      "Desvio"=sd(x))
desc_idade <- analise_quantitativa(df$idade)
desc_altura <- analise_quantitativa(df$altura)
desc_peso <- analise_quantitativa(df$peso)
desc_imc <- analise_quantitativa(df$imc)