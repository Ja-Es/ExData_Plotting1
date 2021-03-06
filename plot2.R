### plot2.R

# load the data and open the png-file
source("LoadData.R")    #extra script for loading the data
png(file="plot2.png", width = 480, height = 480)

#plot the line plot, but not the y-axis
plot(mydata$Global_active_power,type = "l", 
     ylab ="Global Active Power (kilowatts)",
     xlab ="",
     xaxt="n")
#plot the y-axis seperately with the weekdays
axis(side=1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))

#close the png-file
dev.off()
