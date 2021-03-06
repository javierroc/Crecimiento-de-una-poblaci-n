############################
#Selecci�n de modelos
############################

## La siguiente funci�n determina cu�l es el modelo que minimiza el ECM.
## Usa funciones previas: la log�stica y la del c�lculo del error

## Par�metros:
# K: vector de capacidades de carga
# r: vector de tasas de crecimiento de la poblaci�n
# A: Vector de constantes



model_selection = function(K,A,R,x,y){
  xx=diag(0,length(K))
  errors=rep(0,length(K))
  for(i in 1 : length(K)){
    xx[,i]=logistica(x,K[i],A[i],r[i])
  }
  
  for(j in 1:length(K)){
    errors[j]=error(xx[,j],y)
  }
    ind=which.min(errors)
  return(ind)
}