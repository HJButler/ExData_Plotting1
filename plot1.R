# Read in household power consumption text file and create plot 1

# Go to Directory
wd <- "Z:/Heather_Computer_Lenovo_2010plus/Documents/Career/Coursera_DataAnalysis"
In <- "household_power_consumption_SUBSET.txt"

# Read in data
setwd(wd)
mydata <- read.table(In, header=TRUE, sep=";")

# Open png file and create histogram
png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(mydata$Global_active_power, xlab="Global Active Power (kilowatts)", main="Global Active Power", col="red")
dev.off()
