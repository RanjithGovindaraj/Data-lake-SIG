mydata <- read.csv(file.choose())

library(ggplot2)

ggplot(data =mydata[mydata$carat<2.5,],aes(x=carat,y=price,c))

ggplot(data =mydata[mydata$carat<2.5,],aes(x=carat,y=price,colour=clarity))+geom_point(alpha=0.1)+geom_smooth()

