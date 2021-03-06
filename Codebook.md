CodeBook.md
-----------------------------

## Raw Data:
Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Script overview:
 One R script called run_analysis.R that does the following. 
 1. Merges the training and the test sets to create one data set.
 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
 3. Uses descriptive activity names to name the activities in the data set
 4. Appropriately labels the data set with descriptive variable names. 
 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Tidy Dataset Columns
| Column Name | Description | 
| ------------------------------ | ------------------------------------------------------------ |
|ActivityID|A value of 1-6 corresponding to Activity|
|Activity|The text name of the Activity|
|Subject|A value of 1-30 representing the subject of this observation|
|tBodyAcc-mean()-X|Average measurement of the original dataset|
|tBodyAcc-mean()-Y|Average measurement of the original dataset|
|tBodyAcc-mean()-Z|Average measurement of the original dataset|
|tBodyAcc-std()-X|Average measurement of the original dataset|
|tBodyAcc-std()-Y|Average measurement of the original dataset|
|tBodyAcc-std()-Z|Average measurement of the original dataset|
|tGravityAcc-mean()-X|Average measurement of the original dataset|
|tGravityAcc-mean()-Y|Average measurement of the original dataset|
|tGravityAcc-mean()-Z|Average measurement of the original dataset|
|tGravityAcc-std()-X|Average measurement of the original dataset|
|tGravityAcc-std()-Y|Average measurement of the original dataset|
|tGravityAcc-std()-Z|Average measurement of the original dataset|
|tBodyAccJerk-mean()-X|Average measurement of the original dataset|
|tBodyAccJerk-mean()-Y|Average measurement of the original dataset|
|tBodyAccJerk-mean()-Z|Average measurement of the original dataset|
|tBodyAccJerk-std()-X|Average measurement of the original dataset|
|tBodyAccJerk-std()-Y|Average measurement of the original dataset|
|tBodyAccJerk-std()-Z|Average measurement of the original dataset|
|tBodyGyro-mean()-X|Average measurement of the original dataset|
|tBodyGyro-mean()-Y|Average measurement of the original dataset|
|tBodyGyro-mean()-Z|Average measurement of the original dataset|
|tBodyGyro-std()-X|Average measurement of the original dataset|
|tBodyGyro-std()-Y|Average measurement of the original dataset|
|tBodyGyro-std()-Z|Average measurement of the original dataset|
|tBodyGyroJerk-mean()-X|Average measurement of the original dataset|
|tBodyGyroJerk-mean()-Y|Average measurement of the original dataset|
|tBodyGyroJerk-mean()-Z|Average measurement of the original dataset|
|tBodyGyroJerk-std()-X|Average measurement of the original dataset|
|tBodyGyroJerk-std()-Y|Average measurement of the original dataset|
|tBodyGyroJerk-std()-Z|Average measurement of the original dataset|
|tBodyAccMag-mean()|Average measurement of the original dataset|
|tBodyAccMag-std()|Average measurement of the original dataset|
|tGravityAccMag-mean()|Average measurement of the original dataset|
|tGravityAccMag-std()|Average measurement of the original dataset|
|tBodyAccJerkMag-mean()|Average measurement of the original dataset|
|tBodyAccJerkMag-std()|Average measurement of the original dataset|
|tBodyGyroMag-mean()|Average measurement of the original dataset|
|tBodyGyroMag-std()|Average measurement of the original dataset|
|tBodyGyroJerkMag-mean()|Average measurement of the original dataset|
|tBodyGyroJerkMag-std()|Average measurement of the original dataset|
|fBodyAcc-mean()-X|Average measurement of the original dataset|
|fBodyAcc-mean()-Y|Average measurement of the original dataset|
|fBodyAcc-mean()-Z|Average measurement of the original dataset|
|fBodyAcc-std()-X|Average measurement of the original dataset|
|fBodyAcc-std()-Y|Average measurement of the original dataset|
|fBodyAcc-std()-Z|Average measurement of the original dataset|
|fBodyAccJerk-mean()-X|Average measurement of the original dataset|
|fBodyAccJerk-mean()-Y|Average measurement of the original dataset|
|fBodyAccJerk-mean()-Z|Average measurement of the original dataset|
|fBodyAccJerk-std()-X|Average measurement of the original dataset|
|fBodyAccJerk-std()-Y|Average measurement of the original dataset|
|fBodyAccJerk-std()-Z|Average measurement of the original dataset|
|fBodyGyro-mean()-X|Average measurement of the original dataset|
|fBodyGyro-mean()-Y|Average measurement of the original dataset|
|fBodyGyro-mean()-Z|Average measurement of the original dataset|
|fBodyGyro-std()-X|Average measurement of the original dataset|
|fBodyGyro-std()-Y|Average measurement of the original dataset|
|fBodyGyro-std()-Z|Average measurement of the original dataset|
|fBodyAccMag-mean()|Average measurement of the original dataset|
|fBodyAccMag-std()|Average measurement of the original dataset|
|fBodyBodyAccJerkMag-mean()|Average measurement of the original dataset|
|fBodyBodyAccJerkMag-std()|Average measurement of the original dataset|
|fBodyBodyGyroMag-mean()|Average measurement of the original dataset|
|fBodyBodyGyroMag-std()|Average measurement of the original dataset|
|fBodyBodyGyroJerkMag-mean()|Average measurement of the original dataset|
|fBodyBodyGyroJerkMag-std()|Average measurement of the original dataset|
