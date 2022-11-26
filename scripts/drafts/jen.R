# Install and load the package
install.packages("RMariaDB")
library(RMariaDB)
library(DBI)

## Prepare the CSV file

# sample data downloaded from https://archive.ics.uci.edu/ml/datasets/Bike+Sharing+Dataset
# day.csv - bike sharing counts aggregated on daily basis. Records: 731 days
# stored under 'data/day.csv'

## Import the CSV File into a data frame
df <-read.csv("data/day.csv", header=TRUE)
head(df)

## Connect R to MySQL by creating a MySQL connection object
con <- dbConnect(RMariaDB::MariaDB(), 
                  user = 'root', 
                  password = 'password', 
                  host = '127.0.0.1',
                  dbname = 'bike-sharing')

