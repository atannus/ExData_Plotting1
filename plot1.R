source('loadData.R')

# Set facets.
par(mfrow = c(1,1), bg="white")

# Histogram.
hist(data$Global_active_power,
     col="red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")

dev.copy(png, 'plot1.png')
dev.off()