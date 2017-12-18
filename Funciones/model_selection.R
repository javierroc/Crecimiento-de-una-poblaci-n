############################
#Selección de modelos
############################

## La siguiente función determina cuál es el modelo que minimiza el ECM.
## Usa funciones previas: la logística y la del cálculo del error

## Parámetros:
# K: vector de capacidades de carga
# r: vector de tasas de crecimiento de la población
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