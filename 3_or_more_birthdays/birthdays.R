et.seed(777)
N <- 10000000
draw <- function(){
   sample(1:365, 12, replace = T)
}
check_if_three <- function(vector){
   for (item in vector){
   if (sum(vector == item ) >= 3)
      return(TRUE) # whenever we encounter three or more birthdays on the same day we return TRUE
   }
return(FALSE)
}
accumulator <- 0
for (n in 1:N){
   if (check_if_three(draw())){
      accumulator <- accumulator + 1
   }
}
print(accumulator/N)
