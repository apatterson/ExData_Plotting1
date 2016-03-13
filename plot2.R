##plot 2 GlobalActive Power

if(!exists("gapower")) {
  gapower <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
}

gapowerfeb <- gapower[gapower$Date == "1/2/2007" | gapower$Date == "2/2/2007",]


png("plot2.png")
with(gapowerfeb,
  plot(strptime(paste(Date, Time), format="%d/%m/%Y %H:%M:%S"),
     as.numeric(Global_active_power), 
     ylab="Global Active Power (kilowatts)",
     type="l")
)

dev.off()