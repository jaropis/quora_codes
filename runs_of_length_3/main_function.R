balls <- c(rep(0,5), rep(1,6))
n <- 10000000
register <- 0
for (i in 1:n){
  draw <- sample(balls,11)
  if ((sum(draw[1:3])==0) & draw[4]==1)
    register <- register+1
}
print(register/n)