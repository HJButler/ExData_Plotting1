# Read in household power consumption text file and create plot 3

# Go to Directory
wd <- "Z:/Heather_Computer_Lenovo_2010plus/Documents/Career/Coursera_DataAnalysis"
In <- "household_power_consumption_SUBSET.txt"

# Read in data
setwd(wd)
mydata <- read.table(In, header=TRUE, sep=";")

# Create character vectpors for 2 of the 3 columns
sm2 <- mydata[ , 8]
sm3 <- mydata[ , 9]


# Open png file 
png(filename = "plot3.png", width = 480, height = 480, units = "px")

# Plot the first line with no border and no axis labels
plot(mydata$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering", axes=FALSE)

# Add in axis labels and frame
axis(1, at=c(0, 1440, 2880), labels=c("Thur", "Fri", "Sat"))
axis(2, at=c(0, 10, 20, 30), labels=c(0, 10, 20, 30))
box()

# Plot additonal data as new lines
lines(sm2, col="red")
lines(sm3, col="blue")

# Specify legend
legend(x="topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), cex=0.8, 
       col=c("black", "red", "blue"), lty=1)

# Close image
dev.off()
