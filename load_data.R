### 1st way to read the data
### Use the package "sqldf" which uses a sql query to do the selection:
install.packages("sqldf")
require("sqldf")

mySql <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
myFile <- "household_power_consumption.txt"
myData <- read.csv.sql(myFile, sql=mySql, sep=";")