#Train a Random Forest
#split into two subsets: training (70%) and test (30%)
ind <- sample(2, nrow(iris), replace=TRUE, prob=c(0.7, 0.3))
train.data <- iris[ind==1,]
test.data <- iris[ind==2,]
# use all other variables to predict Species
#install.packages("randomForest")
# usually go with Caret package
library(randomForest)
#provide the hypothesis
rf <- randomForest(Species ~ ., data=train.data, ntree=1000,proximity=T)
# to print the confusion matrix
table(predict(rf), train.data$Species)
print(rf)

#Error Rate of Random Forest
plot(rf, main = "")

#Variable Importance
importance(rf)

#Variable Importance
varImpPlot(rf)

#Margin of Predictions
#The margin of a data point is as the proportion of votes for the
#correct class Minus maximum proportion of votes for other classes.
#Positive margin means correct classication.
irisPred <- predict(rf, newdata = test.data)
table(irisPred, test.data$Species)
plot(margin(rf))

