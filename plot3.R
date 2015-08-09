source('loadData.R')

png('plot3.png')

# Plot Sub metering 1 vs Time.
plot(data$DateTime, data$Sub_metering_1,
     type = "l",
     ylab = "Energy sub metering",
     xlab = ""
)

# Add Sub meterings 2 and 3.
lines(data$DateTime, data$Sub_metering_2, col="red")
lines(data$DateTime, data$Sub_metering_3, col="blue")

# Add legend.
legend('topright', names(data)[8:10], lty=c(1, 1, 1), col=c("black", "red", "blue"))

dev.off()
