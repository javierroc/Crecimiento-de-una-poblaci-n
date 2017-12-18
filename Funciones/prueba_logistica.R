############################
#Función logística
############################

## La siguiente función determina el tamaño de una población en distintos 
#instantes de tiempo. Admite un vector de observaciones y los parámetros del modelo.

## Parámetros:
# K: capacidad de carga
# r: tasa de crecimiento de la población
# A: una constante


logistica=function(x,K,A,r){#lectura de datos
  logis=c(0)

  for(i in 1:length(x)){
    logis[i]=K/(1+A*exp(-r*i))
  }
  return(logis)
}



#Ejemplo
logistica(c(1,2,5),10,10,0.25)

