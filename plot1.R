

png(filename="plot1.png",height=480,width=480)

power <- read.table("household_power_consumption.txt",sep=";",header=TRUE,na.strings = "?")
                    
                    
poweronsecond <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")
                    
hist(as.numeric(poweronsecond$Global_active_power),col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)",ylab="Frequency")


dev.off()

