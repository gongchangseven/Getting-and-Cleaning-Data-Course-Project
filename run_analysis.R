library(dplyr)
library(reshape2)

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
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")

test_data <- read.table("./data/UCI HAR Dataset/test/X_test.txt",colClasses = "numeric")
subject_test_data <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
y_test_data <- read.table("./data/UCI HAR Dataset/test/y_test.txt")

train_dta <- read.table("./data/UCI HAR Dataset/train/X_train.txt",colClasses = "numeric")
subject_train_data <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
y_train_data <- read.table("./data/UCI HAR Dataset/train/y_train.txt")


###Extracts only the measurements on the mean and standard deviation for each measurement
# get index of mean and std
indx <-  grep("mean\\(\\)|std\\(\\)",features$V2)

#select data 
test_data <-test_data[,indx]
#set name
varnames <- features[indx,]$V2
varnames <- gsub("-mean\\(\\)-*","Mean",varnames)
varnames <- gsub("-std\\(\\)-*","Std",varnames)

names(test_data) <- varnames
test_data$subject <- subject_test_data$V1
test_data$activity <-activity_labels[y_test_data$V1,2]


train_dta <-train_dta[,indx]
#set name
names(train_dta) <- varnames
train_dta$subject <- subject_train_data$V1
train_dta$activity <- activity_labels[y_train_data$V1,2]


#Merges the training and the test sets to create one data set
data<- bind_rows(train_dta,test_data)


data <- tbl_df(data)
#Modify the order of cols
data <- select(data,subject,activity,tBodyAccMeanX:fBodyBodyGyroJerkMagStd)

#group   summarize
allData.melted <- melt(data, id = c("subject", "activity"))
data.mean <- dcast(allData.melted, subject + activity ~ variable, mean)
write.table(data.mean,"./data/tidy.txt",row.names = FALSE)
