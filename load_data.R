subdata<-read.table("./data/household_power_consumption.txt",nrows=69518, header= TRUE, sep =";",colClasses= c("character","character",rep("numeric",7)),na="?")
newdata<-subdata[(subdata$Date == "1/2/2007" | subdata$Date == "2/2/2007"),]
x<-paste(newdata$Date,newdata$Time)
newdata$newTime<-strptime(x, "%d/%m/%Y %H:%M:%S")
attach(newdata)