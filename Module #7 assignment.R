#loads the pryr package which allows you to test object types
library(pryr)

#Loads New York Air Quality Measurements built-in dataset
data("airquality")

#tests the generic function print() and plot() can be used on airquality dataset
print(airquality)

plot(airquality) # both generic functions work on the airquality dataset

#test object type of airquality
otype(airquality) # airquality is an S3 object
