Frequency <-c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
BP <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
First <- c(1,1,1,1, 0, 0, 0,0, NA, 1)
Second <- c(0,0,1,1,0,0,1,1,1,1)
Final.Decision <- c(0,1,0,1,0,1,0,1,1,1)

#column bind the 5 vectors into one matrix
hospital.data <- cbind(Frequency, BP, First, Second, Final.Decision)
#Transform the matrix into a data frame
hospital.data <- as.data.frame(hospital.data, na.rm = TRUE)

#Create a boxplot for the hospital data with side-by-side variables 
boxplot(hospital.data)
#Creates individual histograms for the hospital.data 
hist(hospital.data$Frequency)
hist(hospital.data$BP)
hist(hospital.data$First)
hist(hospital.data$Second)
hist(hospital.data$Final.Decision)

