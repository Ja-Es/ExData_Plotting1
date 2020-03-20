### plot3.R

# load the data and open the png-file
source("LoadData.R")    #extra script for loading the data
png(file="plot3.png")

#plot the first line, but not the y-axis
plot(mydata$Sub_metering_1,
     type = "l", col="black",
     ylab ="Energy sub metering",
     xlab ="",
     xaxt="n")
points(mydata$Sub_metering_2,      #add the second line
       type = "l", col="red")
points(mydata$Sub_metering_3,      #add the third line
       type = "l", col="blue")

#plot the y-axis seperately with the weekdays
axis(side=1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))


legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty =1, c("l","l","l"),
       col = c("black","red", "blue"))

#close the png-file
dev.off()
