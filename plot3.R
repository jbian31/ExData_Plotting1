#run Preprocess.R first
png(filename = "plot4.png", width = 480, height = 480, units='px')
plot(dff$Date.Time, dff$Sub_metering_1,type = "l", xlab = "", ylab = "Energy sub metering")
lines(dff$Date.Time, dff$Sub_metering_2,type = "l", col = "red", xlab = "")
lines(dff$Date.Time, dff$Sub_metering_3,type = "l", col = "blue", xlab = "")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), col = c("black", "blue", "red"), lty = c(1,1),cex = 0.75)

dev.off()
