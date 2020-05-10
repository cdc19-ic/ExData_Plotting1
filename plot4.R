par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
plot(sub$date_time, sub$Global_active_power, type="l", xlab="", ylab = "Global Active Power")

plot(sub$date_time, sub$Voltage, type="l", xlab="datatime", ylab="Voltage")

plot(sub$date_time, sub$Sub_metering_1, type="l", xlab="", ylab="Global Active Power")
lines(sub$date_time, sub$Sub_metering_2, col="red")
lines(sub$date_time, sub$Sub_metering_3, col="blue")
legend("topright", col=c("black","red","blue"), lwd=2, bty="n", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(sub$date_time, sub$Global_reactive_power, type="l", xlab="datatime", ylab="Global_reactive_power")

dev.copy(png,"plot4.png", width=480, height=480)
dev.off()