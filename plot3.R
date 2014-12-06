source("load_data.R")
png(filename = "plot3.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")

plot(newTime,Sub_metering_1,xlab="",ylab = 
       "Energy sub metering",type="l")
lines(newTime,Sub_metering_2,col="red");
lines(newTime,Sub_metering_3,col="blue");
legend("topright",lwd=1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()