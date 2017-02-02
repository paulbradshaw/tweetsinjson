#install packages (if not already installed)
install.packages('jsonlite')
install.packages('dplyr')
#load required packages
library(dplyr)
library(jsonlite)
#get data from Firebase REST API - NOTE THAT THE AUTH CODE WILL NEED TO BE REPLACED
tweets <- fromJSON("https://jazzdayjhive.firebaseio.com/chelt2016/.json?print=pretty&auth=ENTERYOURKEYHERE")
#convert json to data table, ogranised according to element 'user'
data <- bind_rows(tweets, .id = 'user')
#write to csv
write.csv(data, 'chelt_tweets_sorted.csv')
#resulting file has a few odd variables at the end, but otherwise looks ok.


