Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC.results <- c(4,62,51,21,2,14,15)
NBC.results <- c(12,75,43,19,1,21,19)

#Column bind the three values
results <- cbind(Name, ABC.results, NBC.results)
results

#Convert to a data frame
results.df <- data.frame(Name, ABC.results, NBC.results)
results.df

#Provides summary stats on the data.frame including minimums, maximums, 1st and 3rd quartiles, median as well as the mean
summary(results.df)
#Must use colMeans function for the data.frame as in R version 3.0.0 or later can't pass data.frame into mean without
#resulting in an error
colMeans(results.df[,2:3], na.rm = TRUE)
#Removes the first column because to keep numerics in column 2 and 3 when converting to a matrix, column 1 is removed
#In a matrix all data must be of the same type
results.matrix <- as.matrix(results.df[,-1])
mean(results.matrix)
colMeans(results.matrix[,1:2])

