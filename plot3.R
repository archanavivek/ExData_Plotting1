#open device
png(filename='plot3.png',width=480,height=480,units='px')
lncol<-c('Black','red','blue')
lbls<-c('Sub_Metering_1','Sub_Metering_2','Sub_Metering_3')

#plot data
plot(power.consumption$DateTime,power.consumption$SubMetering1,col=lncol[1],ylab='Energy Sub Metering',xlab=' ',type='l')
lines(power.consumption$DateTime,power.consumption$SubMetering2,col=lncol[2])
lines(power.consumption$DateTime,power.consumption$SubMetering3,col=lncol[3])

legend('topright',legend=lbls,col=lncol,lty='solid')

x<-dev.off()
