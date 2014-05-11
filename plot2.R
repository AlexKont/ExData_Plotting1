### Plot2:

source("load_data.R")

myData$DateTime <- strptime(paste(myData$Date, myData$Time), "%d/%m/%Y %H:%M:%S")

png(filename = "plot2.png", width = 480, height = 480, units = "px")
plot(myData$DateTime, myData$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()