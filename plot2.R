setwd('/Users/home/archana/plot/ExData_Plotting1')


# open device
png(filename='plot2.png',width=480,height=480,units='px')

# plot data
plot(power.consumption$DateTime ,power.consumption$GlobalActivePower,type='l',xlab='',ylab='Global Active Power')

# close device
x<-dev.off()