#run Preprocess.R first
plot(dff$Date.Time, dff$Global_active_power,type = "l", xlab = "", ylab = "Global Active Power (killowatts)")
dev.copy(png, "plot2.png")
dev.off()
