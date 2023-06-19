# Solicita ao usuário para inserir os valores dos coeficientes
a <- as.numeric(readline("Digite o valor de a: "))
b <- as.numeric(readline("Digite o valor de b: "))
c <- as.numeric(readline("Digite o valor de c: "))

# Calculando o valor do discriminante (delta)
delta <- b^2 - 4*a*c

if(delta < 0) {
  cat("A equação não possui raízes reais\n")
} else if(delta == 0) {
  x <- (-b) / (2 * a)
  cat(paste0("A equação possui apenas uma raiz real, x=", x, "\n"))
} else {
  x1 <- (-b + sqrt(delta)) / (2 * a)
  x2 <- (-b - sqrt(delta)) / (2 * a)

  cat(paste0("As raízes da equação são x1=", x1, " e x2=", x2, "\n"))
}
