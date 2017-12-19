#1 Plot 1


dataFile <- "C:/Users/abekele/Documents/Corsera/Exploratory Data Analysis/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".", na.strings = "?")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#subSetData 1/2/2017 - 2/2/2017
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
