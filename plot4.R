source('loadData.R')

# Set facets.
par(mfrow=c(2,2), bg="white")

# Global Active Power
plot(data$DateTime, data$Global_active_power, type = "l",
     ylab = "Global Active Power",
     xlab = ""
)

# Voltage
plot(data$DateTime, data$Voltage,
     type = "l",
     ylab = "Voltage",
     xlab = "datetime"
)

# Energy sub metering
plot(data$DateTime, data$Sub_metering_1,
     type = "l",
     ylab = "Energy sub metering",
     xlab = ""
)
lines(data$DateTime, data$Sub_metering_2, col="red")
lines(data$DateTime, data$Sub_metering_3, col="blue")
legend('topright', names(data)[8:10], lty=c(1, 1, 1), col=c("black", "red", "blue"), bty="n")

# Global reactive power.
plot(data$DateTime, data$Global_reactive_power,
     type = "l",
     ylab = "Global reactive power",
     xlab = "datetime"
)

dev.copy(png, 'plot4.png')
dev.off()
