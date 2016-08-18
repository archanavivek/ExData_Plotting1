head(power.consumption)
datetime <- paste(as.Date(power.consumption$Date), power.consumption$Time)
power.consumption$Datetime <- as.POSIXct(datetime)
plot(power.consumption$Global_active_power~power.consumption$Datetime, type="l",ylab="Global Active Power (kilowatts)", xlab="")

dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
