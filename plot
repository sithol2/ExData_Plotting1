library(plyr)
library(ggplot2)
library(data.table)
NEI <- readRDS("summarySCC_PM25.rds")
emissions<- with(NEI, aggregate(Emissions, by = list(year), sum))
plot(emissions, type = "b", pch = 18, col = "green", ylab = "Emissions", 
     xlab = "Year", main = "Annual Emissions")
