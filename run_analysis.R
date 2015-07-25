#Instructions:
#You should create one R script called run_analysis.R that does the following. 
#1. Merges the training and the test sets to create one data set.
#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names. 
#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.



#Load libraries
#read_table() is part of the readr library
#Super fast for reading fixed width files.
#As opposed to the built_in read.fwf(), which threw an error after 15 mins,
#due to insufficient memory (8 Gb wasn't enough!).
library(dplyr)
library(readr)


#Load feature names and rename the colnames to be more readable.
feature_names <- read.csv("./UCI HAR Dataset/features.txt", header = FALSE, sep = " ")
colnames(feature_names) <- c("index", "feature")

#Load descriptive activity names for labels.
label_names <- read.csv("./UCI HAR Dataset/activity_labels.txt", header = FALSE, sep = " ")
colnames(label_names) <- c("label", "description")

#Load volunteer (subject) data for both test and train sets.
subjectsTest <- read_table("./UCI HAR Dataset/test/subject_test.txt", col_names = "subject")
subjectsTrain <- read_table("./UCI HAR Dataset/train/subject_train.txt", col_names = "subject")

#Specify file locations. Working directory must be set to one level above "UCI HAR Dataset"
filePJtestX <- "./UCI HAR Dataset/test/X_test.txt"
filePJtestY <- "./UCI HAR Dataset/test/Y_test.txt"
filePJtrainX <- "./UCI HAR Dataset/train/X_train.txt"
filePJtrainY <- "./UCI HAR Dataset/train/Y_train.txt"

#Load the test data and name the 561 columns with the feature_names[, "feature"] above.
PJtestX <- read_table(filePJtestX, col_names = as.character(feature_names[,"feature"]))
PJtestY <- read_table(filePJtestY, col_names = "label")

#Do same for train data.
PJtrainX <- read_table(filePJtrainX, col_names = as.character(feature_names[,"feature"]))
PJtrainY <- read_table(filePJtrainY, col_names = "label")


# 1. Merges the training and the test sets to create one data set. 
#First variable is subject; second variable is label; the other 561 variables are the features.
#So dim() of the merged dataframe, PJtrain_test, will be 10299 x 563.
PJtest <- cbind.data.frame(subjectsTest, PJtestY, PJtestX)
PJtrain <- cbind.data.frame(subjectsTrain, PJtrainY, PJtrainX)
PJtrain_test <- rbind.data.frame(PJtrain, PJtest)


#2. Extracts only the measurements on the mean and standard deviation for each measurement. 

#extract the indexes of the columns that contain "mean" or "std" strings
MeanStdCols <- which(grepl("mean", feature_names[,"feature"]) | grepl("std", feature_names[,"feature"]))

#create a new feature vector with only the mean and std variables
feature_names_MeanStd <- feature_names[MeanStdCols,"feature"]

#create a new data frame with the above features, and include the subject and label columns in the front
PJtrain_test_MeanStd <- PJtrain_test[,c("subject", "label", as.character(feature_names_MeanStd))]


#3. Uses descriptive activity names to name the activities in the data set

#The plan is to add descriptive activity names as a separate column, letting the "label" column remain.

PJtrain_test_MeanStd <- cbind(label_names[PJtrain_test_MeanStd[, "label"],"description"], PJtrain_test_MeanStd)
colnames(PJtrain_test_MeanStd)[1] <- "activity"


#4. Appropriately labels the data set with descriptive variable names. 

#Already did this in the beginning when creating the PJtrainX, PJtrainY and PJtestX, PJtestY data frames.
#The descriptive variable names have permeated through all the steps.


#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#summarise_each() loops over every variable and applies the mean function
#note: columns "activity" and "label" are synonymous, i.e. "activity" is the description of "label"
avgByActivitySubject <- PJtrain_test_MeanStd %>% group_by(activity, subject) %>% summarise_each(funs(mean))


#show results - 1. Combined test and train datasets, 2. Average by activity and subject.
View(PJtrain_test)
View(avgByActivitySubject, "Averages by Activity and Subject")


#write.table(avgByActivitySubject, file = "avgByActivitySubject.txt", row.names = FALSE)
