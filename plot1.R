initial <- read.delim("household_power_consumption.txt", na.strings = "?", sep=";")

initial$Date <- as.Date(initial$Date, "%d/%m/%Y")
sub <- subset(initial,(initial$Date >= as.Date("2007-2-1")) & (initial$Date <= as.Date("2007-2-2")))
date_time <- paste(sub$Date, sub$Time)
date_time <- strptime(date_time, "%Y-%m-%d %H:%M:%S")
sub <- cbind(date_time, sub)

hist(sub$Global_active_power, xlab = "Global Active Power (kilowatts)", main ="Global Active Power", col = "red")
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()