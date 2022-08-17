"waveform" <- 
  function(n)
{
  class <- as.numeric(cut(runif(n), c(0, 1/3, 2/3, 1)))
  h <- function(xoff)
    pmax(6 - abs(seq(21) - 11 + xoff), 0)
  x <- rbind(h(0), h(-4), h(4))
  x1 <- x[c(1, 1, 2),  ][class,  ]
  x2 <- x[c(2, 3, 3),  ][class,  ]
  u <- runif(n)
  data.frame(x = I(u * x1 + (1 - u) * x2 + rnorm(n * 21)), y = class)
}

