#Read the csv file
rdrace <- read.csv("C:\\Users\\dpd140130\\OneDrive - The University of Texas at Dallas\\CS 6313\\Projects\\02\\Mini-Proj-2\\roadrace.csv")

#Q1.a - Create a barplot of Maine
b_plot <- barplot(maine, main = "Runners Distribution", xlab = "Maine or Away", ylab = "Number of Players",ylim = c(0,5000), col="skyblue")
rdrace_maine = table (rdrace$Maine)
rdrace_maine

#Q1.b - Creating histograms of running times for Runners from Maine/Away.
rt_maine <- rdrace[rdrace$Maine=='Maine',]
hist(rt_maine$Time..minutes., breaks=20,col="skyblue", main="Runner's Time for Maine" , xlab = "Time in Minutes" , ylab = "Number of Runners",xlim=c(20,140),ylim=c(0,1000))
rt_away <- rdrace[rdrace$Maine=='Away',]
hist(rt_away$Time..minutes., breaks=20,col="skyblue", main="Runner's Time for Away" , xlab = "Time in Minutes" , ylab = "Number of Runners",xlim=c(20,140),ylim=c(0,1000))

#Q1.b - Summary Statistics
summary(rt_maine$Time..minutes.)
summary(rt_away$Time..minutes.)
sd(rt_maine$Time..minutes.)
sd(rt_away$Time..minutes.)
diff(range(rt_maine$Time..minutes.))
diff(range(rt_away$Time..minutes.))
IQR(rt_maine$Time..minutes.)
IQR(rt_away$Time..minutes.)

#Q1.c - Creating Box plots for both Runner categories.
bxplt_runrs <- cbind("Maine"=(rt_maine$Time..minutes.),"Away"=(rt_away$Time..minutes.))
boxplot(bxplt_runrs, beside=T, col="skyblue",ylab="Run time (minutes)",main="Boxplots of Runners")

#Q1.d - side by side boxplot for the runner’s ages for male and female runner
male_run <- rdrace[rdrace$Sex=='M',]
female_run <- rdrace[rdrace$Sex=='F',]
age_run <- cbind("Male"=(as.numeric(male_run$Age)),"Female"=(as.numeric(female_run$Age)))
boxplot(age_run, beside=T, col="skyblue",ylab="Age (in years)",main="Boxplots of Female and Male Runners")

#Q1.d - Summary Statistics
summary(as.numeric(male_run$Age))
summary(as.numeric(female_run$Age))
sd(as.numeric(male_run$Age))
sd(as.numeric(female_run$Age))
diff(range(as.numeric(male_run$Age)))
diff(range(as.numeric(female_run$Age)))
IQR(as.numeric(male_run$Age))
IQR(as.numeric(female_run$Age))
