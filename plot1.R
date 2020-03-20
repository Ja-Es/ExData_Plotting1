### plot1.R

# load the data and open the png-file
source("LoadData.R")
png(file="plot1.png")

#plot the histogramm
hist(mydata$Global_active_power, col="red", 
     xlab ="Global Active Power (kilowatts)",
     main = "Global Active Power")

#close the png-file
dev.off()
