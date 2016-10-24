
png(filename="plot2.png",height=480,width=480)


power <- read.table("household_power_consumption.txt",sep=";",header=TRUE,na.strings = "?")


poweronsecond <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")


poweronsecond$datetime <- strptime(paste(poweronsecond$Date, poweronsecond$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

plot(poweronsecond$datetime,as.numeric(poweronsecond$Global_active_power),main="Global Active Power Vs Time",type="l",xlab="",ylab="Global Active Power (kilowatts)") 

dev.off()