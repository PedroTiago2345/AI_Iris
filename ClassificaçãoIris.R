#Incio do Exerciceo
iris <-iris

#randomiza
idxs <- sample(1:nrow(iris),as.integer(0.8*nrow(iris)))
treino<-iris[idxs,]
teste<- iris[-idxs,]

#vetores
classesTreino <-treino[,5] #Specie é a classificação(esta na quinta coluna)
classesTeste <-teste[,5]

#removendo a coluna 5 (Species)
treino <-treino[,-5]
teste <-teste[,-5]

#package de KNN
install.packages("FNN")
library(FNN)
resultadoTreino <- knn(treino,teste,classesTreino,k=1)
resultadoTreino


Acuracia <- function(resultado,classe){

  count <- 0
  valor <- 0
  
  for (i in resultado) {
    count <- count + 1
    if(i == classe[count])
      valor <- valor + 1
  }
  
  acuracia<-(valor/count) *100
  acuracia
}

Acuracia(resultadoTreino,classesTeste)
