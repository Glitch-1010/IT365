getwd()
setwd("C:/Users/Kaye/OneDrive/Documents/GitHub/IT365/Midterm Review")
library("readxl")
student<-read_xlsx("StudentsPerformance.xlsx")
png("SPNoO.png")
plot(x = student$`math score`, y = student$`reading score`, xlab="Math", ylab="Reading", main = "SP for Math and Reading Scores")
dev.off()
cor(student$`math score`, student$`reading score`)

png("BoxPlot.png")
boxplot(student$`math score`)
dev.off()

outlierMath <- boxplot(student$`math score`, plot=FALSE)$out
newBoxPlot <- student
newBoxPlot <- newBoxPlot[-which(newBoxPlot$`math score` %in% outlierMath),]
png("OMath.png")
boxplot(newBoxPlot$`math score`)
dev.off()
