t_n <- function(n){
  set.seed(777)
  accumulator <- c()
  N <- 1000000
  for (i in 1:N){
    boxA <- c(rep(1,100-n), rep(0,n))
    boxB <- c(rep(0,100-n), rep(1,n))
    number <- 0
    while(sum(boxA)>50){
      drawA <- sample(seq(1,100),1)
      drawB <- sample(seq(1,100),1)
      intermediateA <- boxA[drawA]
      intermediateB <- boxB[drawB]
      boxA[drawA] <- intermediateB
      boxB[drawB] <- intermediateA
      number <- number+1
    }
    accumulator <- c(accumulator, number)
  }
  print(mean(accumulator))
}