library(readxl)
library(dplyr)
library(lubridate)

data <- read_excel("Customer_Segmentation.xlsx")
head(data,5)

#Create TransactionDate
data$TransactionDate = ymd(paste0(data$Year,"-",data$Month,"-",data$Day))
class(data$TransactionDate)
