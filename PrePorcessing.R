
library(tidyr)
library(stringr)

# download
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip","data.zip")
unzip

# extract
df <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)

#normalize
df$Date <- as.Date(df$Date,format = "%d/%m/%Y")
df$Date.Time <- as.POSIXct(paste(df$Date, df$Time), format = "%Y-%m-%d %H:%M:%S")
dff <- df[df$Date>=as.Date("2007-02-01") & df$Date <=as.Date("2007-02-02"),]

dff$Global_active_power <- as.numeric(dff$Global_active_power)
#plot1

