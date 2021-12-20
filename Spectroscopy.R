library(dplyr)

data <- read.csv("Spectroscopy.csv")
#map P->Pig,T->Turkey and C->Cattle, useful to plot later
data$animal<-recode(data$animal,P="Pig",T="Turkey",C="Cattle")

head(data)


wavelengths <- data[,3:17]
data[,2]

pairs(wavelengths,col=recode(data$animal,Pig="#bc5090",Turkey="#ff6361",Cattle="#ffa600"))
