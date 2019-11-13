my_mean<-function(x){
  a <- 0
  for(i in 1:length(x)) {
    a=a+x[i]
  }
  c=a/length(x)
  c
}
my_mean(x1)
