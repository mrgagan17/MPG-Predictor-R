# Load the mtcars dataset
data(mtcars)

# Create a multivariate linear regression model
model <- lm(mpg ~ wt + hp + qsec, data = mtcars)

# Summary of the regression model
summary(model)

# Predict new values
new_data <- data.frame(wt = 3.5, hp = 150, qsec = 17)
predicted_mpg <- predict(model, newdata = new_data)

# Display predicted MPG
cat("Predicted MPG:", predicted_mpg, "\n")

# Predict MPG for all cars in the dataset
predicted_mpg_all <- predict(model)

# Plot the actual vs predicted MPG
plot(mtcars$mpg, predicted_mpg_all, main="Actual vs Predicted MPG",
     xlab="Actual MPG", ylab="Predicted MPG", pch=19, col="blue")
abline(a=0, b=1, col="red", lwd=2)  # Adds a reference line where actual = predicted

# Add labels for the plot
legend("topleft", legend=c("Data Points", "Perfect Prediction Line"),
       col=c("blue", "red"), pch=c(19, NA), lty=c(NA, 1))


