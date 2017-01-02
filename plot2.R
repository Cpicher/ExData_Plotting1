plot2 <- function(){ 
plot(MyData$timestamp, MyData$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)") 
# Create local copy of plot2.png file
dev.copy(png, file="plot2.png", width=480, height=480) 
dev.off()
}
plot2()
