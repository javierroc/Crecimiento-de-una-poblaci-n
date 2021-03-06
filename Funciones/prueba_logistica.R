############################
#Funci�n log�stica
############################

## La siguiente funci�n determina el tama�o de una poblaci�n en distintos 
#instantes de tiempo. Admite un vector de observaciones y los par�metros del modelo.

## Par�metros:
# K: capacidad de carga
# r: tasa de crecimiento de la poblaci�n
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

