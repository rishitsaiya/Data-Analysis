my_meadian <- function(x){
  n <- sort(x)
  if(length(n)%%2==0){
    a<-(length(n)/2)
    b<-((length(n)/2)+1)
    c<-((n[a]+n[b])/2)
  }
  else{
    a<-(length(n)+1)/2
    c<-n[a]
  }
  c
}

sorting <- function(x){
  for(i in 1:(length(x)-1)){
    for(j in (i+1):length(x)){
      if(x[i] > x[j]){
        x[c(i,j)] = x[c(j,i)] 
      }
    }
  }
  x
}

my_meadian(x1)

sorting(x1)
