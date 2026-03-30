# Funções auxiliares -----------------------------

analise_qualitativa <- function(x) {
  n <- table(x)
  f <- prop.table(n)
  cbind(n, f)
}

# Leitura dos dados ------------------------

df <- read.csv("dados - respostas formulário.csv")

# Análise descritiva das variáveis qualitativas --------------------------

for (coluna in c("ingresso", "sexo", "grupo_sanguineo", "ingere_pao",
                 "ingere_massa", "ingere_refri", "ingere_alcool")) {
  cat(coluna, "\n")
  print(analise_qualitativa(df[,coluna]))
  cat("\n")
}

frutas_flat = c()
for (frutas in strsplit(df$fruta_gosta, ", ")) {
  if (frutas[length(frutas)] == "Nenhuma das frutas mencionadas") {
    frutas_flat <- c(frutas_flat, "Nenhuma")
  } else {
    frutas_flat <- c(frutas_flat, frutas)
  }
}
sort(table(frutas_flat), decreasing=TRUE)
