source('loadData.R')

png('plot2.png')

plot(data$DateTime, data$Global_active_power,
     type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab = ""
     )

dev.off()
