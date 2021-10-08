getwd()
setwd("C:/Users/engbi/OneDrive/Documents/GitHub/IT365/Week 6/Linear Regression using R")
car <- read.csv("CarPrice.csv")

wheelBP <- car
oWheel <- boxplot(wheelBP$wheelbase, plot = FALSE)$out
wheelBP <- wheelBP[-which(wheelBP$wheelbase %in% oWheel),]
png("NWheel.png")
boxplot(wheelBP$wheelbase)
oWheel <- boxplot(wheelBP$wheelbase, plot = FALSE)$out
wheelBP <- wheelBP[-which(wheelBP$wheelbase %in% oWheel),]
png("NWheel.png")
boxplot(wheelBP$wheelbase)
oWheel <- boxplot(wheelBP$wheelbase, plot = FALSE)$out
wheelBP <- wheelBP[-which(wheelBP$wheelbase %in% oWheel),]
png("NWheel.png")
boxplot(wheelBP$wheelbase)
dev.off()

OLength <- boxplot(wheelBP$carlength, plot = FALSE)$out
wheelBP <- wheelBP[-which(wheelBP$carlength %in% OLength),]
png("NLength.png")
boxplot(wheelBP$carlength)
dev.off()

OWidth <- boxplot(wheelBP$carwidth, plot = FALSE)$out
wheelBP <- wheelBP[-which(wheelBP$carwidth %in% OWidth),]
png("NWidth.png")
boxplot(wheelBP$carwidth)
dev.off()

png("OHeight.png")
boxplot(wheelBP$carheight)
dev.off()

png("OWeight.png")
boxplot(wheelBP$curbweight)
dev.off()

OSize <- boxplot(wheelBP$enginesize, plot = FALSE)$out
wheelBP <- wheelBP[-which(wheelBP$enginesize %in% OSize),]
png("NSize.png")
boxplot(wheelBP$enginesize)
dev.off()

png("ORatio.png")
boxplot(wheelBP$boreratio)
dev.off()

OStroke <- boxplot(wheelBP$stroke, plot = FALSE)$out
wheelBP <- wheelBP[-which(wheelBP$stroke %in% OStroke),]
png("NStroke.png")
boxplot(wheelBP$stroke)
OStroke <- boxplot(wheelBP$stroke, plot = FALSE)$out
wheelBP <- wheelBP[-which(wheelBP$stroke %in% OStroke),]
png("NStroke.png")
boxplot(wheelBP$stroke)
dev.off()

OCompress <- boxplot(wheelBP$compressionratio, plot = FALSE)$out
wheelBP <- wheelBP[-which(wheelBP$compressionratio %in% OCompress),]
png("NCompress.png")
boxplot(wheelBP$compressionratio)
OCompress <- boxplot(wheelBP$compressionratio, plot = FALSE)$out
wheelBP <- wheelBP[-which(wheelBP$compressionratio %in% OCompress),]
png("NCompress.png")
boxplot(wheelBP$compressionratio)
dev.off()

OHorsepower <- boxplot(wheelBP$horsepower, plot = FALSE)$out
wheelBP <- wheelBP[-which(wheelBP$horsepower %in% OHorsepower),]
png("NHorsepower.png")
boxplot(wheelBP$horsepower)
dev.off()

OPeak <- boxplot(wheelBP$peakrpm, plot = FALSE)$out
wheelBP <- wheelBP[-which(wheelBP$peakrpm %in% OPeak),]
png("NPeak.png")
boxplot(wheelBP$peakrpm)
dev.off()

png("NCity.png")
boxplot(wheelBP$citympg)
dev.off()

png("NHighway.png")
boxplot(wheelBP$highwaympg)
dev.off()

OPrice <- boxplot(wheelBP$price, plot = FALSE)$out
wheelBP <- wheelBP[-which(wheelBP$price %in% OPrice),]
png("NPrice.png")
boxplot(wheelBP$price)
OPrice <- boxplot(wheelBP$price, plot = FALSE)$out
wheelBP <- wheelBP[-which(wheelBP$price %in% OPrice),]
png("NPrice.png")
boxplot(wheelBP$price)
dev.off()

View(wheelBP)

regModel <- lm(wheelBP$price~wheelBP$wheelbase + wheelBP$stroke + wheelBP$horsepower + wheelBP$citympg)
summary(regModel)
