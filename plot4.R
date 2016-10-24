

png(filename="plot4.png",height=480,width=480)
par(mfrow=c(2,2))



power <- read.table("household_power_consumption.txt",sep=";",header=TRUE,na.strings = "?")


poweronsecond <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")


poweronsecond$datetime <- strptime(paste(poweronsecond$Date, poweronsecond$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

plot(poweronsecond$datetime,as.numeric(poweronsecond$Global_active_power),type="l",xlab="",ylab="Global Active Power (kilowatts)") 

plot(poweronsecond$datetime,as.numeric(poweronsecond$Voltage),type="l",xlab="datetime",ylab="Voltage") 


plot(poweronsecond$datetime,as.numeric(poweronsecond$Sub_metering_1),type = "l",xlab=" ",ylab="Energy Submetering")
lines(poweronsecond$datetime,as.numeric(poweronsecond$Sub_metering_2),type="l",col="red")
lines(poweronsecond$datetime,as.numeric(poweronsecond$Sub_metering_3),type="l",col="blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=1, col=c("black", "red", "blue"))


plot(poweronsecond$datetime,as.numeric(poweronsecond$Global_reactive_power),type="l",xlab="datetime",ylab="Global_Reactive_Power") 


dev.off()