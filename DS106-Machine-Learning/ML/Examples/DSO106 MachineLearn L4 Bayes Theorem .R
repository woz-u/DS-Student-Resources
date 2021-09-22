trials <- 10000

alpha <- 8
beta <- 2

samplesA <- rbeta(trials, 95 + alpha, 22 + beta)
samplesB <- rbeta(trials, 73 + alpha, 45 + beta)

Bsuperior <- sum(samplesB > samplesA) / trials