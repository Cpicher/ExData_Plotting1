plot4 <-function(){ 
  # Preparation of the graph space
  par(mfcol= c(2, 2)) 
  # Plot 1
  plot(MyData$timestamp,MyData$Global_active_power, type="l", xlab="", ylab="Global Active Power")  
  # Plot 2
  with(MyData, plot(timestamp, Sub_metering_1, type="l", xlab="", ylab="Energy Sub Metering"))  
  with(MyData, lines(timestamp, Sub_metering_2, col="red"))   
  with(MyData, lines(timestamp, Sub_metering_3, col="blue")) 
  legend("topright", legend =c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lty=c(1,1), lwd=c(1,1), bty="n", cex=0.5)
  # Plot 3
  plot(MyData$timestamp,MyData$Voltage, type="l", xlab="datetime", ylab="Voltage")  
  #Plot 4
  plot(MyData$timestamp,MyData$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power") 
  # Creates a local copy of the plot4.png file
  dev.copy(png, file="plot4.png", width=480, height=480) 
  dev.off() 
}
plot4()
