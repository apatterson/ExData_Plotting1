##plot 3

if(!exists("gapower")) {
  gapower <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
}

gapowerfeb <- gapower[gapower$Date == "1/2/2007" | gapower$Date == "2/2/2007",]


png("plot3.png")
with(gapowerfeb,
     plot(strptime(paste(Date, Time), format="%d/%m/%Y %H:%M:%S"),
          as.numeric(Sub_metering_1), 
          ylab="Energy Sub Metering",
          xlab="Sub metering 1",
          type="l")
)

with(gapowerfeb,
     lines(strptime(paste(Date, Time), format="%d/%m/%Y %H:%M:%S"),
          as.numeric(Sub_metering_2), 
          col="red",
          xlab="Sub_metering_2",
          type="l")
)

with(gapowerfeb,
     lines(strptime(paste(Date, Time), format="%d/%m/%Y %H:%M:%S"),
           as.numeric(Sub_metering_3), 
           col="blue",
           xlab="Sub_metering_3",
           type="l")
)

legend("topright", 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd=2,
       col=c("black", "red", "blue"))

dev.off()