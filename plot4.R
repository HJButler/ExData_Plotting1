# Read in household power consumption text file and create plot 4

# Go to Directory
wd <- "Z:/Heather_Computer_Lenovo_2010plus/Documents/Career/Coursera_DataAnalysis"
In <- "household_power_consumption_SUBSET.txt"

# Read in data
setwd(wd)
mydata <- read.table(In, header=TRUE, sep=";")

# Create character vectors for 2 of the 3 columns
sm2 <- mydata[ , 8]
sm3 <- mydata[ , 9]

# Open png file 
png(filename = "plot4.png", width = 480, height = 480, units = "px")


# Prepare to print 2 rows of 2 images
par(mfrow=c(2,2))

# Top Left plot
plot(mydata$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)", axes=FALSE)
axis(1, at=c(0, 1440, 2880), labels=c("Thur", "Fri", "Sat"))
axis(2, at=c(0, 2, 4, 6), labels=c(0, 2, 4, 6))
box()

# Top Right plot
plot(mydata$Voltage, type="l", xlab="datetime", ylab="Voltage", axes=FALSE)
axis(1, at=c(0, 1440, 2880), labels=c("Thur", "Fri", "Sat"))
axis(2, at=c(234, 238, 242, 246), labels=c(234, 238, 242, 246))
box()

# Bottom Left plot
plot(mydata$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering", axes=FALSE)
axis(1, at=c(0, 1440, 2880), labels=c("Thur", "Fri", "Sat"))
axis(2, at=c(0, 10, 20, 30), labels=c(0, 10, 20, 30))
box()
lines(sm2, col="red")
lines(sm3, col="blue")
legend(x="topright", c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), cex=0.8, col=c("black", "red", "blue"), lty=1, bty="n")

# Bottom Right plot
plot(mydata$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power", axes=FALSE)
axis(1, at=c(0, 1440, 2880), labels=c("Thur", "Fri", "Sat"))
axis(2, at=c(0, 0.1, 0.2, 0.3, 0.4, 0.5), labels=c(0, 0.1, 0.2, 0.3, 0.4, 0.5))
box()


# Close image
dev.off()
