#splitting dataset in half

data = read.csv('./PMD-en.csv')

half = nrow(data)/2

first = data[1:half,]
second = data[(half+1):nrow(data),]
rm(data)

write.csv(first, "./PMD-en_FIRSTHALF.csv", row.names=FALSE)
write.csv(second, "./PMD-en_SECONDHALF.csv", row.names=FALSE)


####
# To read in data...
#### 

# data = rbind(
#   read.csv('./PMD-en_FIRSTHALF.csv'),
#   read.csv('./PMD-en_SECONDHALF.csv')
# )
