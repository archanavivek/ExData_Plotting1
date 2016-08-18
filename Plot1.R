power.consumption<-read.table('household_power_consumption.txt',header=TRUE,sep=';',na.strings='?',colClasses=c(rep('character',2),rep('numeric',7)))
power.consumption<-power.consumption[power.consumption$Date=='1/2/2007' | power.consumption$Date=='2/2/2007',]
png(filename='plot1.png',width=480,height=480,units='px')
a<-power.consumption$Global_active_power
hist(a,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')