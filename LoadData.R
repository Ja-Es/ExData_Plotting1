### load data


## read only the lines containing data for 1/7/2007 and 2/7/2007
library(data.table)
mydata <- fread("./exdata_data_household_power_consumption/household_power_consumption.txt",
                skip = "1/2/2007;00:00:00;", #start reading in lines from here
                sep = ";",
                nrow = 2880) # read 2880 lines (one line per minute for 2 days = 2880 lines)

# With skippig, you have to read the header seperately
myheader <- fread("./exdata_data_household_power_consumption/household_power_consumption.txt",
                 sep = ";",
                 nrow = 0, header = T)
names(mydata) = names(myheader)

# change first column into date format
mydata$Date <- as.Date(mydata$Date, "%d/%m/%Y")

