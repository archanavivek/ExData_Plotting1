library(lubridate)
setwd("~/archana/plot/ExData_Plotting1")
power.consumption<-read.table('household_power_consumption.txt',header=TRUE,sep=';',na.strings='?')
power.consumption<-power.consumption[power.consumption$Date=='1/2/2007' | power.consumption$Date=='2/2/2007',]
--clean up data and give column names
cols<-c('Date','Time','GlobalActivePower','GlobalReactivePower','Voltage','GlobalIntensity','SubMetering1','SubMetering2','SubMetering3')
colnames(power.consumption)<-cols
power.consumption$DateTime<-dmy(power.consumption$Date)+hms(power.consumption$Time)
power.consumption<-power.consumption[,c(10,3:9)]



png(filename='plot1.png',width=480,height=480,units='px')
hist(power.consumption$GlobalActivePower,main="Global Active Power",xlab='Global Active Power(kilowatts)',col='red')

x<-dev.off()
