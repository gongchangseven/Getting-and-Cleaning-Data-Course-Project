# Code Book
Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Create one R script called run_analysis.R that does the following:
* Merges the training and the test sets to create one data set
* Extracts only the measurements on the mean and standard deviation for each measurement
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names
* From the data set in last step, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Identifiers
* subject - The ID of the test subject
* activity - The type of activity performed when the corresponding measurements were taken

## Activity Labels
* WALKING (value 1): subject was walking during the test
* WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
* WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
* SITTING (value 4): subject was sitting during the test
* STANDING (value 5): subject was standing during the test
* LAYING (value 6): subject was laying down during the test

## Measurements
* tBodyAccMeanX           
* tBodyAccMeanY
* tBodyAccMeanZ
* tBodyAccStdX            
* tBodyAccStdY
* tBodyAccStdZ
* tGravityAccMeanX        
* tGravityAccMeanY
* tGravityAccMeanZ
* tGravityAccStdX         
* tGravityAccStdY
* tGravityAccStdZ
* tBodyAccJerkMeanX       
* tBodyAccJerkMeanY
* tBodyAccJerkMeanZ
* tBodyAccJerkStdX        
* tBodyAccJerkStdY
* tBodyAccJerkStdZ
* tBodyGyroMeanX          
* tBodyGyroMeanY
* tBodyGyroMeanZ
* tBodyGyroStdX           
* tBodyGyroStdY
* tBodyGyroStdZ
* tBodyGyroJerkMeanX      
* tBodyGyroJerkMeanY
* tBodyGyroJerkMeanZ
* tBodyGyroJerkStdX       
* tBodyGyroJerkStdY
* tBodyGyroJerkStdZ
* tBodyAccMagMean         
* tBodyAccMagStd
* tGravityAccMagMean
* tGravityAccMagStd       
* tBodyAccJerkMagMean
* tBodyAccJerkMagStd
* tBodyGyroMagMean        
* tBodyGyroMagStd
* tBodyGyroJerkMagMean
* tBodyGyroJerkMagStd     
* fBodyAccMeanX
* fBodyAccMeanY
* fBodyAccMeanZ           
* fBodyAccStdX
* fBodyAccStdY
* fBodyAccStdZ            
* fBodyAccJerkMeanX
* fBodyAccJerkMeanY
* fBodyAccJerkMeanZ       
* fBodyAccJerkStdX
* fBodyAccJerkStdY
* fBodyAccJerkStdZ        
* fBodyGyroMeanX
* fBodyGyroMeanY
* fBodyGyroMeanZ          
* fBodyGyroStdX
* fBodyGyroStdY
* fBodyGyroStdZ           
* fBodyAccMagMean
* fBodyAccMagStd
* fBodyBodyAccJerkMagMean 
* fBodyBodyAccJerkMagStd
* fBodyBodyGyroMagMean
* fBodyBodyGyroMagStd     
* fBodyBodyGyroJerkMagMean
* fBodyBodyGyroJerkMagStd 