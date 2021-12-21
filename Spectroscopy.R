library(dplyr)

data <- read.csv("Spectroscopy.csv")
data$animal<-recode(data$animal,P="Pig",T="Turkey",C="Cattle")
attach(data)

wavelengths <- data[,3:17]
pairs(wavelengths,
      pch=20,
      col=recode(
        data$animal,
        Pig="#bc5090",
        Turkey="#ff6361",
        Cattle="#ffa600"))


