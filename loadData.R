# Check for zipped data file.
zip_filename = "household_power_consumption.zip"
if( ! file.exists(zip_filename) ) {
    # Download zipped data file.
    url = "http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    download.file(url, zip_filename)
}

# Check for extracted data.
data_filename = "household_power_consumption.txt"
if( ! file.exists(data_filename) ) {
    # Extract data.
    unzip(zip_filename)
}

# Extract column names.
colNames <- read.table("household_power_consumption.txt",
                       sep=";",
                       nrows = 1,
                       stringsAsFactors = FALSE)

# Read only the rows corresponding to the date range we want (Feb 1st and 2nd 2007)
data <- read.table("household_power_consumption.txt",
                   sep=";",
                   col.names = colNames,
                   skip = 66637,
                   nrows = 2880,
                   na.strings = "?",
                   stringsAsFactors = FALSE)

# Create a new DateTime column from the Date and Time columns.
DateTime <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")

# Bind DateTime column to the data frame.
data <- cbind(DateTime, data);

# Clean up.
rm(colNames)
rm(DateTime)
rm(data_filename)
rm(zip_filename)
