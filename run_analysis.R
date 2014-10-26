#
#  run_analysis.R 
# Written by John Papproth
#
# Performs the following:
# 1.Merges the training and the test sets to create one data set.
# 2.Extracts only the measurements on the 
#   mean and standard deviation for each measurement. 
# 3.Uses descriptive activity names to name the activities 
#   in the data set
# 4.Appropriately labels the data set with descriptive variable names. 
# 5.From the data set in step 4, creates a second, 
#   independent tidy data set with the average of each variable 
#   for each activity and each subject.
#
#
#
#
# 0.Require special libraries and get labels for later use
#
#
#
require(reshape)
# Get activity labels
activity <- read.table("activity_labels.txt")
colnames(activity) <- c("ActivityID","Activity")
# Get feature labels
features <- read.table("features.txt")
#
#
#
# 1.Merges the training and the test sets to create one data set.
#
#
#
# Combine subject train and test
subject_test <- read.table("test/subject_test.txt")
subject_train <- read.table("train/subject_train.txt")
subject <- rbind(subject_test, subject_train)
remove(subject_test)
remove(subject_train)
# Combine X train and test
X_test <- read.table("test/X_test.txt")
X_train <- read.table("train/X_train.txt")
X <- rbind(X_test, X_train)
remove(X_test)
remove(X_train)
# Combine y train and test
y_test <- read.table("test/y_test.txt")
y_train <- read.table("train/y_train.txt")
y <- rbind(y_test, y_train)
remove(y_test)
remove(y_train)
# merge into one dataset
z <- cbind(subject, y, X)
remove(subject)
remove(X)
remove(y)
# label all columns
c <- paste(features$V2)
colnames(z) <- c("Subject","ActivityID",c)
#
#
#
# 2.Extracts only the measurements on the 
#   mean and standard deviation for each measurement. 
#
#
#
# select only mean and standard deviation columns
c <- c[grepl("mean[:(:][:):]|std[:(:][:):]", c)]
z <- z[,c("Subject","ActivityID",c)]
#
#
# 3.Uses descriptive activity names to name the activities 
#   in the data set
# 4.Appropriately labels the data set with descriptive variable names. 
#   colnames were applied earlier
#
#
m <- merge(activity,z,all=TRUE)
remove(z)
#
# 5.From the data set in step 4, creates a second, 
#   independent tidy data set with the average of each variable 
#   for each activity and each subject.
#
#
#
library(reshape)
grp_m <- melt(m,id=c("ActivityID","Activity","Subject"),measure.vars=c)
remove(m)
remove(c)
#
#
cast_m <- cast(grp_m, ActivityID + Activity + Subject ~ variable, mean)
remove(grp_m)
#
# Write out the dataset for upload
#
write.table(cast_m,file="avg_by_activity_and_subject.txt",row.name=FALSE)
