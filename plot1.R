plot1 <- function(){ 
hist(MyData$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)") 
# Create plot1.png file
dev.copy(png, file="plot1.png", width=480, height=480) 
dev.off()
}
plot1()
