png("plot1.png")
d = read.table("hpc.txt", 
               sep=";",
               header=T)
mydate<-as.Date(d$Date,"%d/%m/%Y")
testdate<-(mydate>="2007-02-01") * (mydate<="2007-02-02")
testdate<-as.logical(testdate)
newdata<-d[testdate,]
gap<-as.numeric(newdata$Global_active_power)
hist(gap,main="Global Active Power",xlab="Gloabal Active Power(kilowatts)",ylab="Frequencey",col='red')
dev.off()

