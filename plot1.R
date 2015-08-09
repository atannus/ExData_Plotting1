source('loadData.R')

png('plot1.png')

# Histogram.
hist(data$Global_active_power,
     col="red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")
dev.off()
