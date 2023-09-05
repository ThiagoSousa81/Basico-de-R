# Função para calcular a média
calcularMedia <- function(valores) {
  return(mean(valores))
}

# Função para calcular a mediana
calcularMediana <- function(valores) {
  return(median(valores))
}

# Função para calcular o desvio padrão
calcularDesvioPadrao <- function(valores) {
  return(sd(valores))
}

# Função para calcular a moda
calcularModa <- function(valores) {
  tabela_frequencia <- table(valores)
  moda <- as.numeric(names(tabela_frequencia[tabela_frequencia == max(tabela_frequencia)]))
  return(moda)
}

# Função principal
main <- function() {
  cat("Calculadora de Estatísticas Simples em R\n")
  
  # Solicitar ao usuário que insira os números separados por espaços
  entrada <- readline(prompt = "Digite os números separados por espaços: ")
  
  # Converter a entrada em um vetor de números
  valores <- as.numeric(unlist(strsplit(entrada, " ")))
  
  # Verificar se a entrada é válida
  if (is.na(valores[1])) {
    cat("Entrada inválida. Certifique-se de inserir números separados por espaços.\n")
    return()
  }
  
  # Calcular e exibir a média, mediana, moda e desvio padrão
  media <- calcularMedia(valores)
  mediana <- calcularMediana(valores)
  moda <- calcularModa(valores)
  desvio_padrao <- calcularDesvioPadrao(valores)
  
  cat("\nResultados:\n")
  cat("Média:", media, "\n")
  cat("Mediana:", mediana, "\n")
  cat("Moda:", moda, "\n")
  cat("Desvio Padrão:", desvio_padrao, "\n")
}

# Chamada da função principal
main()
