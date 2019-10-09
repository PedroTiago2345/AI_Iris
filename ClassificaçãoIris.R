iris <-iris

irisRandom
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
resultado <- knn(treino,teste,classesTreino,k=1)
resultado

