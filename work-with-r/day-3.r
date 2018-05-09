# ONE:  load the ‘Orange’ dataset. Find the class. Print first 6 data instances
data("Orange")
head(Orange)

# TWO:  find the correlation between the attribute and the target variable
cor(Orange$circumference, Orange$age)

# THREE: build a linear regression model
model = lm(circumference~age, data = Orange)
# FOUR: find the summary of the model
summary(model)

# FIVE: use the model to predict the circumference of an orange given its age
predict(model, data.frame("age" = 700))
predict(model, data.frame("age" = 500), interval = "prediction")

# SIX: plot the regression line of the trained model
plot(circumference~age, data = Orange)
abline(model, col="red")


