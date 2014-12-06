source("load_data.R")
png(filename = "plot4.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")

par(mfrow = c(2, 2), mar = c(4, 4, 2, 2))
plot(newTime,Global_active_power,type = "l",xlab="",ylab ="Global Active Power")
plot(newTime,Voltage,type = "l",xlab="datetime")
plot(newTime,Sub_metering_1,xlab="",ylab = 
       "Energy sub metering",type="l")
lines(newTime,Sub_metering_2,col="red");
lines(newTime,Sub_metering_3,col="blue");
legend("topright",lwd=1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(newTime,Global_reactive_power,type = "l",xlab="datetime")
dev.off()