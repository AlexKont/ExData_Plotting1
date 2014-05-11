### Plot3:

source("load_data.R")

myData$DateTime <- strptime(paste(myData$Date, myData$Time), "%d/%m/%Y %H:%M:%S")

png(filename = "plot3.png", width = 480, height = 480, units = "px")
columns = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
plot(myData$DateTime, myData$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(myData$DateTime, myData$Sub_metering_2, type="l", col="red")
lines(myData$DateTime, myData$Sub_metering_3, type="l", col="blue")
legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=columns)
dev.off()