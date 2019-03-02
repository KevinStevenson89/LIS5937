#load plyr package into memory
library(plyr)

#load assignment 6 dataset into R
x <- read.table(file.choose(), header = TRUE, sep = ",")

#generate mean for both Age and Grade split by Gender
students_gendered_mean <- ddply(x,"Sex",transform, Grade.Average=mean(Grade))

#Write students_gendered_mean to a file
write.table(students_gendered_mean,"Sorted_Average")

#Filter names to only inlcude those containing the letter [iI]
i_students <- subset(x,grepl("[iI]",x$Name))

#Write i_students to a file
write.table(i_students,"DataSubset",sep=",")
