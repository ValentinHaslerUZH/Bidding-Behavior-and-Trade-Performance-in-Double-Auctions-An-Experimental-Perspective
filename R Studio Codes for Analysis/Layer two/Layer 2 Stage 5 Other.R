#Reading the Data set

Data <- read.csv("path")

#Download the necessary libraries

library(tidyverse)

#creating the PDF
pdf("path")



#Logistic Regressions______________________________________________________________________________________________________________________________________________________________


#GoP ~ Quick and aggressive

#Choosing the data set

Data_for_Regression_Seller_bad_Other <- Data_Seller_bad_Other[!is.na(Data_Seller_bad_Other$GOP_B), ]

#Creating a Model

model_Q_A_Seller_bad_Other <- glm(GOP_B ~ Quick_and_Aggressive, data = Data_Seller_bad_Other, family = binomial)
summary(model_Q_A_Seller_bad_Other)



# Create a data frame with predictions
Data_for_Regression_Seller_bad_Other$predicted_prob <- predict(model_Q_A_Seller_bad_Other, type = "response")

# Plot the data points and the logistic regression curve
ggplot(Data_for_Regression_Seller_bad_Other, aes(x = Quick_and_Aggressive, y = GOP_B)) + geom_point(aes(color = factor(GOP_B)), size = 3) + geom_line(aes(y = predicted_prob), color = "blue", size = 1) + labs(title = "Logistic Regression of GOP on Quick and Aggressive Seller bad_Other",
                                                                                                                                                                                                             x = "Quick and Aggressive ",
                                                                                                                                                                                                             y = "Probability of GOP_B") + scale_color_discrete(name = "GOP") + theme_minimal()




#Choosing the data set

Data_for_Regression_Seller_Good_Other <- Data_Seller_Good_Other[!is.na(Data_Seller_Good_Other$GOP_B), ]

#Creating a Model

model_Q_A_Seller_Good_Other <- glm(GOP_B ~ Quick_and_Aggressive, data = Data_Seller_Good_Other, family = binomial)
summary(model_Q_A_Seller_Good_Other)



# Create a data frame with predictions
Data_for_Regression_Seller_Good_Other$predicted_prob <- predict(model_Q_A_Seller_Good_Other, type = "response")

# Plot the data points and the logistic regression curve
ggplot(Data_for_Regression_Seller_Good_Other, aes(x = Quick_and_Aggressive, y = GOP_B)) + geom_point(aes(color = factor(GOP_B)), size = 3) + geom_line(aes(y = predicted_prob), color = "blue", size = 1) + labs(title = "Logistic Regression of GOP on Quick and Aggressive Seller Good_Other",
                                                                                                                                                                                                              x = "Quick and Aggressive ",
                                                                                                                                                                                                              y = "Probability of GOP_B") + scale_color_discrete(name = "GOP") + theme_minimal()


#Choosing the data set

Data_for_Regression_Buyer_bad_Other <- Data_Buyer_bad_Other[!is.na(Data_Buyer_bad_Other$GOP_B), ]

#Creating a Model

model_Q_A_Buyer_bad_Other <- glm(GOP_B ~ Quick_and_Aggressive, data = Data_Buyer_bad_Other, family = binomial)
summary(model_Q_A_Buyer_bad_Other)



# Create a data frame with predictions
Data_for_Regression_Buyer_bad_Other$predicted_prob <- predict(model_Q_A_Buyer_bad_Other, type = "response")

# Plot the data points and the logistic regression curve
ggplot(Data_for_Regression_Buyer_bad_Other, aes(x = Quick_and_Aggressive, y = GOP_B)) + geom_point(aes(color = factor(GOP_B)), size = 3) + geom_line(aes(y = predicted_prob), color = "blue", size = 1) + labs(title = "Logistic Regression of GOP on Quick and Aggressive Buyer bad_Other",
                                                                                                                                                                                                            x = "Quick and Aggressive ",
                                                                                                                                                                                                            y = "Probability of GOP_B") + scale_color_discrete(name = "GOP") + theme_minimal()


#Choosing the data set

Data_for_Regression_Buyer_Good_Other <- Data_Buyer_Good_Other[!is.na(Data_Buyer_Good_Other$GOP_B), ]

#Creating a Model

model_Q_A_Buyer_Good_Other <- glm(GOP_B ~ Quick_and_Aggressive, data = Data_Buyer_Good_Other, family = binomial)
summary(model_Q_A_Buyer_Good_Other)



# Create a data frame with predictions
Data_for_Regression_Buyer_Good_Other$predicted_prob <- predict(model_Q_A_Buyer_Good_Other, type = "response")

# Plot the data points and the logistic regression curve
ggplot(Data_for_Regression_Buyer_Good_Other, aes(x = Quick_and_Aggressive, y = GOP_B)) + geom_point(aes(color = factor(GOP_B)), size = 3) + geom_line(aes(y = predicted_prob), color = "blue", size = 1) + labs(title = "Logistic Regression of GOP on Slow and Aggressive Buyer Good_Other",
                                                                                                                                                                                                             x = "Quick and Aggressive ",
                                                                                                                                                                                                             y = "Probability of GOP_B") + scale_color_discrete(name = "GOP") + theme_minimal()


#GoP ~ Slow and aggressive_______________________________________________________________________________________________________________________________________________________


#Choosing the data set

Data_for_Regression_Seller_bad_Other <- Data_Seller_bad_Other[!is.na(Data_Seller_bad_Other$GOP_B), ]

#Creating a Model

model_S_A_Seller_bad_Other <- glm(GOP_B ~ Slow_and_Aggressive, data = Data_Seller_bad_Other, family = binomial)
summary(model_S_A_Seller_bad_Other)



# Create a data frame with predictions
Data_for_Regression_Seller_bad_Other$predicted_prob <- predict(model_S_A_Seller_bad_Other, type = "response")

# Plot the data points and the logistic regression curve
ggplot(Data_for_Regression_Seller_bad_Other, aes(x = Slow_and_Aggressive, y = GOP_B)) + geom_point(aes(color = factor(GOP_B)), size = 3) + geom_line(aes(y = predicted_prob), color = "blue", size = 1) + labs(title = "Logistic Regression of GOP on Slow and Aggressive Seller bad_Other",
                                                                                                                                                                                                            x = "Slow and Aggressive",
                                                                                                                                                                                                            y = "Probability of GOP_B") + scale_color_discrete(name = "GOP") + theme_minimal()




#Choosing the data set

Data_for_Regression_Seller_Good_Other <- Data_Seller_Good_Other[!is.na(Data_Seller_Good_Other$GOP_B), ]

#Creating a Model

model_S_A_Seller_Good_Other <- glm(GOP_B ~ Slow_and_Aggressive, data = Data_Seller_Good_Other, family = binomial)
summary(model_S_A_Seller_Good_Other)



# Create a data frame with predictions
Data_for_Regression_Seller_Good_Other$predicted_prob <- predict(model_S_A_Seller_Good_Other, type = "response")

# Plot the data points and the logistic regression curve
ggplot(Data_for_Regression_Seller_Good_Other, aes(x = Slow_and_Aggressive, y = GOP_B)) + geom_point(aes(color = factor(GOP_B)), size = 3) + geom_line(aes(y = predicted_prob), color = "blue", size = 1) + labs(title = "Logistic Regression of GOP on Slow and Aggressive Seller Good_Other",
                                                                                                                                                                                                             x = "Slow and Aggressive",
                                                                                                                                                                                                             y = "Probability of GOP_B") + scale_color_discrete(name = "GOP") + theme_minimal()


#Choosing the data set

Data_for_Regression_Buyer_bad_Other <- Data_Buyer_bad_Other[!is.na(Data_Buyer_bad_Other$GOP_B), ]

#Creating a Model

model_S_A_Buyer_bad_Other <- glm(GOP_B ~ Slow_and_Aggressive, data = Data_Buyer_bad_Other, family = binomial)
summary(model_S_A_Buyer_bad_Other)



# Create a data frame with predictions
Data_for_Regression_Buyer_bad_Other$predicted_prob <- predict(model_S_A_Buyer_bad_Other, type = "response")

# Plot the data points and the logistic regression curve
ggplot(Data_for_Regression_Buyer_bad_Other, aes(x = Slow_and_Aggressive, y = GOP_B)) + geom_point(aes(color = factor(GOP_B)), size = 3) + geom_line(aes(y = predicted_prob), color = "blue", size = 1) + labs(title = "Logistic Regression of GOP on Slow and Aggressive Buyer bad_Other",
                                                                                                                                                                                                           x = "Slow and Aggressive",
                                                                                                                                                                                                           y = "Probability of GOP_B") + scale_color_discrete(name = "GOP") + theme_minimal()


#Choosing the data set

Data_for_Regression_Buyer_Good_Other <- Data_Buyer_Good_Other[!is.na(Data_Buyer_Good_Other$GOP_B), ]

#Creating a Model

model_S_A_Buyer_Good_Other <- glm(GOP_B ~ Slow_and_Aggressive, data = Data_Buyer_Good_Other, family = binomial)
summary(model_S_A_Buyer_Good_Other)



# Create a data frame with predictions
Data_for_Regression_Buyer_Good_Other$predicted_prob <- predict(model_S_A_Buyer_Good_Other, type = "response")

# Plot the data points and the logistic regression curve
ggplot(Data_for_Regression_Buyer_Good_Other, aes(x = Slow_and_Aggressive, y = GOP_B)) + geom_point(aes(color = factor(GOP_B)), size = 3) + geom_line(aes(y = predicted_prob), color = "blue", size = 1) + labs(title = "Logistic Regression of GOP on Slow and Aggressive Buyer Good_Other",
                                                                                                                                                                                                            x = "Slow and Aggressive",
                                                                                                                                                                                                            y = "Probability of GOP_B") + scale_color_discrete(name = "GOP") + theme_minimal()





#GoP ~ Slow and soft_____________________________________________________________________________________________________________________________________________________________



#Choosing the data set

Data_for_Regression_Seller_bad_Other <- Data_Seller_bad_Other[!is.na(Data_Seller_bad_Other$GOP_B), ]

#Creating a Model

model_S_S_Seller_bad_Other <- glm(GOP_B ~ Slow_and_soft, data = Data_Seller_bad_Other, family = binomial)
summary(model_S_S_Seller_bad_Other)



# Create a data frame with predictions
Data_for_Regression_Seller_bad_Other$predicted_prob <- predict(model_S_S_Seller_bad_Other, type = "response")

# Plot the data points and the logistic regression curve
ggplot(Data_for_Regression_Seller_bad_Other, aes(x = Slow_and_soft, y = GOP_B)) + geom_point(aes(color = factor(GOP_B)), size = 3) + geom_line(aes(y = predicted_prob), color = "blue", size = 1) + labs(title = "Logistic Regression of GOP on Slow and Soft Seller bad_Other",
                                                                                                                                                                                                      x = "Slow and Soft",
                                                                                                                                                                                                      y = "Probability of GOP_B") + scale_color_discrete(name = "GOP") + theme_minimal()




#Choosing the data set

Data_for_Regression_Seller_Good_Other <- Data_Seller_Good_Other[!is.na(Data_Seller_Good_Other$GOP_B), ]

#Creating a Model

model_S_S_Seller_Good_Other <- glm(GOP_B ~ Slow_and_soft, data = Data_Seller_Good_Other, family = binomial)
summary(model_S_S_Seller_Good_Other)



# Create a data frame with predictions
Data_for_Regression_Seller_Good_Other$predicted_prob <- predict(model_S_S_Seller_Good_Other, type = "response")

# Plot the data points and the logistic regression curve
ggplot(Data_for_Regression_Seller_Good_Other, aes(x = Slow_and_soft, y = GOP_B)) + geom_point(aes(color = factor(GOP_B)), size = 3) + geom_line(aes(y = predicted_prob), color = "blue", size = 1) + labs(title = "Logistic Regression of GOP on Slow and Soft Seller Good_Other",
                                                                                                                                                                                                       x = "Slow and Soft",
                                                                                                                                                                                                       y = "Probability of GOP_B") + scale_color_discrete(name = "GOP") + theme_minimal()


#Choosing the data set

Data_for_Regression_Buyer_bad_Other <- Data_Buyer_bad_Other[!is.na(Data_Buyer_bad_Other$GOP_B), ]

#Creating a Model

model_S_S_Buyer_bad_Other <- glm(GOP_B ~ Slow_and_soft, data = Data_Buyer_bad_Other, family = binomial)
summary(model_S_S_Buyer_bad_Other)



# Create a data frame with predictions
Data_for_Regression_Buyer_bad_Other$predicted_prob <- predict(model_S_S_Buyer_bad_Other, type = "response")

# Plot the data points and the logistic regression curve
ggplot(Data_for_Regression_Buyer_bad_Other, aes(x = Slow_and_soft, y = GOP_B)) + geom_point(aes(color = factor(GOP_B)), size = 3) + geom_line(aes(y = predicted_prob), color = "blue", size = 1) + labs(title = "Logistic Regression of GOP on Slow and Soft Buyer bad_Other",
                                                                                                                                                                                                     x = "Slow and Soft",
                                                                                                                                                                                                     y = "Probability of GOP_B") + scale_color_discrete(name = "GOP") + theme_minimal()


#Choosing the data set

Data_for_Regression_Buyer_Good_Other <- Data_Buyer_Good_Other[!is.na(Data_Buyer_Good_Other$GOP_B), ]

#Creating a Model

model_S_S_Buyer_Good_Other <- glm(GOP_B ~ Slow_and_soft, data = Data_Buyer_Good_Other, family = binomial)
summary(model_S_S_Buyer_Good_Other)



# Create a data frame with predictions
Data_for_Regression_Buyer_Good_Other$predicted_prob <- predict(model_S_S_Buyer_Good_Other, type = "response")

# Plot the data points and the logistic regression curve
ggplot(Data_for_Regression_Buyer_Good_Other, aes(x = Slow_and_soft, y = GOP_B)) + geom_point(aes(color = factor(GOP_B)), size = 3) + geom_line(aes(y = predicted_prob), color = "blue", size = 1) + labs(title = "Logistic Regression of GOP on Slow and Soft Buyer Good_Other",
                                                                                                                                                                                                      x = "Slow and Soft",
                                                                                                                                                                                                      y = "Probability of GOP_B") + scale_color_discrete(name = "GOP") + theme_minimal()



#GoP ~ Quick and soft____________________________________________________________________________________________________________________________________________________________



#Choosing the data set

Data_for_Regression_Seller_bad_Other <- Data_Seller_bad_Other[!is.na(Data_Seller_bad_Other$GOP_B), ]

#Creating a Model

model_Q_S_Seller_bad_Other <- glm(GOP_B ~ Quick_and_soft, data = Data_Seller_bad_Other, family = binomial)
summary(model_Q_S_Seller_bad_Other)



# Create a data frame with predictions
Data_for_Regression_Seller_bad_Other$predicted_prob <- predict(model_Q_S_Seller_bad_Other, type = "response")

# Plot the data points and the logistic regression curve
ggplot(Data_for_Regression_Seller_bad_Other, aes(x = Quick_and_soft, y = GOP_B)) + geom_point(aes(color = factor(GOP_B)), size = 3) + geom_line(aes(y = predicted_prob), color = "blue", size = 1) + labs(title = "Logistic Regression of GOP on Quick and Soft Seller bad_Other",
                                                                                                                                                                                                       x = "Quick and Soft",
                                                                                                                                                                                                       y = "Probability of GOP_B") + scale_color_discrete(name = "GOP") + theme_minimal()




#Choosing the data set

Data_for_Regression_Seller_Good_Other <- Data_Seller_Good_Other[!is.na(Data_Seller_Good_Other$GOP_B), ]

#Creating a Model

model_Q_S_Seller_Good_Other <- glm(GOP_B ~ Quick_and_soft, data = Data_Seller_Good_Other, family = binomial)
summary(model_Q_S_Seller_Good_Other)



# Create a data frame with predictions
Data_for_Regression_Seller_Good_Other$predicted_prob <- predict(model_Q_S_Seller_Good_Other, type = "response")

# Plot the data points and the logistic regression curve
ggplot(Data_for_Regression_Seller_Good_Other, aes(x = Quick_and_soft, y = GOP_B)) + geom_point(aes(color = factor(GOP_B)), size = 3) + geom_line(aes(y = predicted_prob), color = "blue", size = 1) + labs(title = "Logistic Regression of GOP on Quick and Soft Seller Good_Other",
                                                                                                                                                                                                        x = "Quick and Soft",
                                                                                                                                                                                                        y = "Probability of GOP_B") + scale_color_discrete(name = "GOP") + theme_minimal()


#Choosing the data set

Data_for_Regression_Buyer_bad_Other <- Data_Buyer_bad_Other[!is.na(Data_Buyer_bad_Other$GOP_B), ]

#Creating a Model

model_Q_S_Buyer_bad_Other <- glm(GOP_B ~ Quick_and_soft, data = Data_Buyer_bad_Other, family = binomial)
summary(model_Q_S_Buyer_bad_Other)



# Create a data frame with predictions
Data_for_Regression_Buyer_bad_Other$predicted_prob <- predict(model_Q_S_Buyer_bad_Other, type = "response")

# Plot the data points and the logistic regression curve
ggplot(Data_for_Regression_Buyer_bad_Other, aes(x = Quick_and_soft, y = GOP_B)) + geom_point(aes(color = factor(GOP_B)), size = 3) + geom_line(aes(y = predicted_prob), color = "blue", size = 1) + labs(title = "Logistic Regression of GOP on Quick and Soft Buyer bad_Other",
                                                                                                                                                                                                      x = "Quick and Soft",
                                                                                                                                                                                                      y = "Probability of GOP_B") + scale_color_discrete(name = "GOP") + theme_minimal()


#Choosing the data set

Data_for_Regression_Buyer_Good_Other <- Data_Buyer_Good_Other[!is.na(Data_Buyer_Good_Other$GOP_B), ]

#Creating a Model

model_Q_S_Buyer_Good_Other <- glm(GOP_B ~ Quick_and_soft, data = Data_Buyer_Good_Other, family = binomial)
summary(model_Q_S_Buyer_Good_Other)



# Create a data frame with predictions
Data_for_Regression_Buyer_Good_Other$predicted_prob <- predict(model_Q_S_Buyer_Good_Other, type = "response")

# Plot the data points and the logistic regression curve
ggplot(Data_for_Regression_Buyer_Good_Other, aes(x = Quick_and_soft, y = GOP_B)) + geom_point(aes(color = factor(GOP_B)), size = 3) + geom_line(aes(y = predicted_prob), color = "blue", size = 1) + labs(title = "Logistic Regression of GOP on Quick and Soft Buyer Good_Other",
                                                                                                                                                                                                       x = "Quick and Soft",
                                                                                                                                                                                                       y = "Probability of GOP_B") + scale_color_discrete(name = "GOP") + theme_minimal()










################################Section :Clean Up ###########################################





dev.off()

sink("path")

summary(model_Q_A_Buyer_bad_Other)
summary(model_Q_A_Buyer_Good_Other)
summary(model_Q_A_Seller_bad_Other)
summary(model_Q_A_Seller_Good_Other)

summary(model_Q_S_Buyer_bad_Other)
summary(model_Q_S_Buyer_Good_Other)
summary(model_Q_S_Seller_bad_Other)
summary(model_Q_S_Seller_Good_Other)

summary(model_S_S_Buyer_bad_Other)
summary(model_S_S_Buyer_Good_Other)
summary(model_S_S_Seller_bad_Other)
summary(model_S_S_Seller_Good_Other)

summary(model_S_A_Buyer_bad_Other)
summary(model_S_A_Buyer_Good_Other)
summary(model_S_A_Seller_bad_Other)
summary(model_S_A_Seller_Good_Other)

sink()


