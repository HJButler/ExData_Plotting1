# Read in household power consumption text file and create plot 2

# Go to Directory
wd <- "Z:/Heather_Computer_Lenovo_2010plus/Documents/Career/Coursera_DataAnalysis"
In <- "household_power_consumption_SUBSET.txt"

# Read in data
setwd(wd)
mydata <- read.table(In, header=TRUE, sep=";")

# Open png file and create line plot
png(filename = "plot2.png", width = 480, height = 480, units = "px")
plot(mydata$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)", axes=FALSE)
axis(1, at=c(0, 1440, 2880), labels=c("Thur", "Fri", "Sat"))
axis(2, at=c(0, 2, 4, 6), labels=c(0, 2, 4, 6))
box()
dev.off()
