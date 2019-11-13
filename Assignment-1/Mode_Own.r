Mode = function(x){ 
  ta = table(x)
  tam = max(ta)
  b<-tam
  #if (all(ta == tam))
    #mod = NA
  #else
    if(is.numeric(x))
      mod = as.numeric(names(ta)[ta == tam])
 else
   mod = names(ta)[ta == tam]
  return(mod)
}

Mode(x1)