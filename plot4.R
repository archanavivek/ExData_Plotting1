#open device
png(filename='plot4.png',width=480,height=480,units='px')
#divide into 4 plots
par(mfrow=c(2,2))

#top left plot
plot(power.consumption$DateTime,power.consumption$GlobalActivePower,xlab=' ',ylab='Global Active Power',type='l')

#top right plot
plot(power.consumption$DateTime,power.consumption$Voltage,xlab='datetime',ylab='Voltage',type='l')

#bottom left plot
lncol<-c('black','red','blue')
lbls<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(power.consumption$DateTime,power.consumption$SubMetering1,col=lncol[1],ylab='Energy Sub Metering',xlab=' ',type='l')
lines(power.consumption$DateTime,power.consumption$SubMetering2,col=lncol[2])
lines(power.consumption$DateTime,power.consumption$SubMetering3,col=lncol[3])

legend('topright',legend=lbls,col=lncol,lty='solid')


#bottom right plot
plot(power.consumption$DateTime,power.consumption$GlobalReactivePower,xlab='datetime',ylab='Global_reactive_power',type='l')

x<-dev.off()