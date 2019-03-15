library(ggplot2)
library(lattice)
#imports US population dataset
USpop <- read.csv(file = "C:/LIS5937_R_files/USPop.csv")

#produces a pie chart of the US population by year
x <- pie(USpop$population, main = "Population", labels = USpop$year)

#produces a histogram of the US population data
histogram(~ year, data = USpop)
#produces a scatter plot of the US population data
ggplot(USpop, aes(year, population)) + geom_point() 
