library(dplyr)
library(tidyr)

###download data file
#create dir
if(!file.exists("data")){
    dir.create("data")
}
#download
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/UCI HAR Dataset.zip",method="curl")
#unzip
unzip("./data/UCI HAR Dataset.zip",exdir="./data")


###load data
features <- read.table("./data/UCI HAR Dataset/features.txt")
test_data <- read.table("./data/UCI HAR Dataset/test/X_test.txt",colClasses = "numeric")
train_dta <- read.table("./data/UCI HAR Dataset/train/X_train.txt",colClasses = "numeric")


###Merges the training and the test sets to create one data set
data<- bind_rows(train_dta,test_data)


###Extracts only the measurements on the mean and standard deviation for each measurement
# get index of mean and std
indx <-  grep("mean\\(\\)|std\\(\\)",features$V2)
#select data 
selectedData <-data[,indx]
#set name
names(selectedData) <- features[indx,]$V2


### tidy data
#add a new varible
selectedData$captureID <- 1:nrow(selectedData)
#gather,separate,spread,write
selectedData %>%
    gather(activity_meanorstd_axial,value,-captureID) %>%
    separate(activity_meanorstd_axial,c("activity","meanorstd","axial")) %>%
    spread(meanorstd, value) %>%
    write.table("./data/tidy.txt",row.names = FALSE)


