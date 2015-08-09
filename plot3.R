source('loadData.R')

png('plot3.png')

plot(data$DateTime, data$Sub_metering_1,
     type = "l",
     ylab = "Energy sub metering",
     xlab = ""
)

lines(data$DateTime, data$Sub_metering_2, col="red")
lines(data$DateTime, data$Sub_metering_3, col="blue")
legend('topright', names(data)[8:10], lty=c(1, 1, 1), col=c("black", "red", "blue"))

dev.off()
