png(filename='plot3.png',width=480,height=480,units='px')
columnlines<-c("black","red","blue")
labels<-c("Submetering 1","submetering 2","submetering 3")
plot(power.consumption$Datetime,power.consumption$SubMetering1,type='l',col=columnlines[1],xlab='',ylab='Energy sub metering')
lines(power.consumption$Datetime,power.consumption$SubMetering2,col=columnlines[2])
lines(power.consumption$Datetime,power.consumption$SubMetering3,col=columnlines[3])
# add legend
legend('topright',legend=labels,col=columnlines,lty='solid')
dev.off()
