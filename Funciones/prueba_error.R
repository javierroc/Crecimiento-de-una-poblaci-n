error=function(x,y){#lectura de datos
  error=0
  for(i in 1:length(x)){
    error=error+(x[i]^2+y[i]^2)
  }
  return(sqrt(error))
}
#Ejemplo

error(c(1.1,1.6,1.5),c(1.8,1.2,1.01))
