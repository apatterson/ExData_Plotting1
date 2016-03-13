##plot 1 GlobalActive Power

if(!exists("gapower")) {
  gapower <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
}

gapowerfeb <- gapower[gapower$Date == "1/2/2007" | gapower$Date == "2/2/2007",]


png("plot1.png")

hist(as.numeric(gapowerfeb$Global_active_power), 
     main="Global Active Power", 
     col="red",
     xlab="Global Active Power (kilowatts)")
dev.off()