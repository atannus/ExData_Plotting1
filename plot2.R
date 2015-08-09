source('loadData.R')

# Set facets.
par(mfrow = c(1,1), bg="white")

# Global active power vs Time.
plot(data$DateTime, data$Global_active_power,
     type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab = ""
     )

dev.copy(png, 'plot2.png')
dev.off()
