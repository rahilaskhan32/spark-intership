#GRIP Task 1 Prediction using Supervised ML with R
#RAHILA SABIR KHAN
#importing the dataset
data=read.csv("C:/Users/HP/Desktop/Book1.csv")
head(data)
summary(data)
#assigning variable to data
hour=data$Hours
score=data$Scores
#fitting the model
model=lm(score~hour)
model
#plotting the model
plot=plot(hour,score,main="Hour Vs score",xlab="hour",ylab="score",col="red")
abline(model,col="blue")
#comparing actual and predicted scores
actual=score
hour=data.frame(hour)
predicted=predict(model,hour)
predicted
cbind(actual,predicted)
#predicted score if student studied for 9.25hrs/day
test=data.frame(hour=9.25)
predict(model,test)

