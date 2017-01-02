plot3 <-function(){  
with(MyData, plot(timestamp, Sub_metering_1, type="l", ylab="Energy Sub Metering"))  
with(MyData, lines(timestamp, Sub_metering_2, col="red"))   
with(MyData, lines(timestamp, Sub_metering_3, col="blue")) 
legend("topright", legend =c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lty=c(1,1), lwd=c(1,1)) 
# Create a local copy of plot3.png file
dev.copy(png, file="plot3.png", width=480, height=480) 
dev.off()
}
plot3()
