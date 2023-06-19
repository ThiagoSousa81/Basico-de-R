# Instalação e carregamento da biblioteca
install.packages("reinforcementlearning")
library(reinforcementlearning)

# Criação do ambiente
environment <- create_environment(
  state_variables = list(x = 1:10, y = 1:10),
  actions = list(up = c(0, 1), down = c(0, -1), right = c(1, 0), left = c(-1, 0)),
  rewards = function(state, action, next_state) {
    if (next_state$x == 10 && next_state$y == 10) {
      return(100)
    } else {
      return(-1)
    }
  }
)

# Criação do agente com o algoritmo Q-learning
agent <- create_agent(environment, algorithm = "qlearning")

# Treinamento do agente
train_agent(agent, max_episodes = 5000)

# Teste do agente treinado
state <- c(x = 1, y = 1)
while (state$x != 10 || state$y != 10) {
  action <- select_action(agent, state)
  next_state <- execute_action(environment, state, action)
  state <- next_state
  print(paste0("Agente moveu-se para o estado ", state$x, ",", state$y))
}
