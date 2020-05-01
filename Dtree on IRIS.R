
#Decision Tree on IRIS Dataset

rm(list = ls())

library(rpart)
library(rpart.plot)
iris
set.seed(123)

dim(iris)

s <- sample(150,100)
s



iris_train <- iris[s,]

iris_test <- iris[-s,]


dim(iris_train)
dim(iris_test)


dtm <- rpart(Species~.,iris_train,method="class")
dtm


?rpart.plot()

rpart.plot(dtm, type=4,extra=101)



pred <- predict(dtm,iris_test,type="class")
pred



table(actual=iris_test[,5] ,predicted=pred )





