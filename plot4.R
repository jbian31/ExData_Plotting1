#run Preprocess.R first
png(filename = "plot4.png", width = 480, height = 480, units='px')
par(mar=c(2, 2, 0.5, 2), mfcol=c(2,2),oma = c(1, 1, 1, 1))

#plot1
plot(dff$Date.Time, dff$Global_active_power,type = "l", xlab = "", ylab = "Global Active Power (killowatts)")
#plot2
plot(dff$Date.Time, dff$Sub_metering_1,type = "l", xlab = "", ylab = "Energy sub metering")
lines(dff$Date.Time, dff$Sub_metering_2,type = "l", col = "red", xlab = "")
lines(dff$Date.Time, dff$Sub_metering_3,type = "l", col = "blue", xlab = "")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), col = c("black", "blue", "red"),lwd =1, cex = 0.75, x.intersp = 0.5)
#plot3
plot(dff$Date.Time, dff$Voltage,type = "l", xlab = "datetime")
#plot4
plot(dff$Date.Time, dff$Global_reactive_power,type = "l", xlab = "datetime")


dev.off()
