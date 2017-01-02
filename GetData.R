GetData <-function() { 
  
  # Download the zip file  
  fileUrl<- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"  
  download.file(fileUrl,destfile="./Dataset.zip") 
  
  # Unzip the data set into a local repository  
  unzip(zipfile="./Dataset.zip",exdir="./Data") 
  # change the working directory  
  setwd("./Data") 
  # Read the data set  
  Df <- read.table("./household_power_consumption.txt", header = TRUE, sep=";")   
  # Convert the date  and time variable to Date and Time classes 
  Df$Date <- as.Date(Df$Date, format="%d/%m/%Y") 
  # Subset the Data   
  MyData <- Df[(Df$Date=="2007-02-01") | (Df$Date=="2007-02-02"),]   
  # Cast Data 
  MyData <- transform(MyData, timestamp=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")  
  MyData$Global_active_power <- as.numeric(as.character(MyData$Global_active_power))  
  MyData$Global_reactive_power <- as.numeric(as.character(MyData$Global_reactive_power))  
  MyData$Voltage <- as.numeric(as.character(MyData$Voltage))  
  MyData$Sub_metering_1 <- as.numeric(as.character(MyData$Sub_metering_1))  
  MyData$Sub_metering_2 <- as.numeric(as.character(MyData$Sub_metering_2))  
  MyData$Sub_metering_3 <- as.numeric(as.character(MyData$Sub_metering_3))
}
GetData()
