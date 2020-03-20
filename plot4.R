### plot4.R

# load the data and open the png-file
source("LoadData.R")    #extra script for loading the data
png(file="plot4.png")

# plot 2 times 2 pics per page
par(mfcol = c(2, 2))

################################################ top left plot
plot(mydata$Global_active_power,type = "l", 
     ylab ="Global Active Power",
     xlab ="",
     xaxt="n")
axis(side=1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))


############################################### bottom left plot
plot(mydata$Sub_metering_1,
     type = "l", col="black",
     ylab ="Energy sub metering",
     xlab ="",
     xaxt="n")
points(mydata$Sub_metering_2,
       type = "l", col="red")
points(mydata$Sub_metering_3,
       type = "l", col="blue")
axis(side=1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty =1, c("l","l","l"),
       col = c("black","red", "blue"),
       bty = "n")


################################################ top right plot
plot(mydata$Voltage,type = "l", 
     ylab ="Voltage",
     xlab ="datetime",
     xaxt="n")
axis(side=1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))


################################################ bottom right plot
plot(mydata$Global_reactive_power,type = "l", 
     ylab ="Global_reactive_power",
     xlab ="datetime",
     xaxt="n")
axis(side=1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))


#close the png-file
dev.off()
