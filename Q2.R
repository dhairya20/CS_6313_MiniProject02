#Read the csv file
mtcycle <- read.csv("C:\\Users\\dpd140130\\OneDrive - The University of Texas at Dallas\\CS 6313\\Projects\\02\\Mini-Proj-2\\motorcycle.csv")

#Box plot of the fatal accidents in South Carolina
boxplot(mtcycle$Fatal.Motorcycle.Accidents,col="skyblue",ylab="Number of Fatal Accidents",main="Fatal Accidents in South Carolina")

#Summary Statistics
summary_stat <- summary(mtcycle$Fatal.Motorcycle.Accidents)
summary_stat

#To find outliers
int_qurt_rng <- IQR(mtcycle$Fatal.Motorcycle.Accidents)
int_qurt_rng
mtcycle[mtcycle$Fatal.Motorcycle.Accidents>((int_qurt_rng)*1.5+summary_stat[5]),]