install.packages("deSolve")
library(deSolve)





logistica=function(x,K,A,r){#lectura de datos
  logis=c(0)

  for(i in 1:length(x)){
    logis[i]=K/(1+A*exp(-r*i))
  }
  return(logis)
}

logistica(c(1,2,5),10,10,0.25)

error=function(x,y){#lectura de datos
  error=0
  for(i in 1:length(x)){
    error=error+(x[i]^2+y[i]^2)
  }
  
  
}
