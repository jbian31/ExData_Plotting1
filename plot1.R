#run Preprocess.R first
hist(dff$Global_active_power, col = "red", xlab = "Global Active Power (killowatts)", main = "Global Active Power")
dev.copy(png, "plot1.png")
dev.off()
