#Loading caret package
install.packages("caret")
library("caret")
install.packages("readr")
library("readr")
test<- read_csv("societe_generale_test.csv")
train<-read_csv("societe_generale_training.csv")
str(test)
sum(is.na(test))   
sum(is.na(train))
index=complete.cases(train)
mytrain=train[index,]
cor_df=cor(mytrain[,3:16])
train_names=c("serial_number","time_stamp","year1","year2","year3","year4","target","year6","year7","year8","year9","year10","year15","year20","year25","year30")
test_names=c("serial_number","time_stamp","year1","year2","year3","year4","year6","year7","year8","year9","year10","year15","year20","year25","year30")
names(train)=train_names
names(test)=test_names
predictors=c("year1","year2","year3","year4","year6","year7","year8","year9","year10","year15","year20","year25","year30")
outcomeName="target"

index <- createDataPartition(train$target, p=0.75, list=FALSE)
trainSet <- train[ index,]
testSet <- train[-index,]
View(testSet)
#Evaluation based on the train set
linearMod <- lm(target ~ year4,data=testSet)
summary(linearMod)
#Evaluate the performance using testSet
summary(linearMod)  # model summary
par(mfrow=c(2, 2))
plot(linearMod)
#The below plots are used to evaluate the performance of regression 
#Reciduals VS Fitter
#Standardized Residuals VS Theoretical Quantiles
#sqrt(|Standardized Residuals|) VsFitted Values
#standardized residuals VS Leverage
#--------------------------------------------------
#Proceed with the predictions 
y.predict=predict(linearMod,testSet[6])
View (y.predict)