# Data Dictionary


Activity labels consist of the following:

label | activity
--- | ---
1 | WALKING
2 | WALKING_UPSTAIRS
3 | WALKING_DOWNSTAIRS
4 | SITTING
5 | STANDING
6 | LAYING

The first tidy data set (PJtest_train) consists of all 561 features, which are described in 'features_info.txt'. The complete list of variables of each feature vector is available in 'features.txt'. 

The following variables make up the second tidy data set (avgByActivitySubject). 'activity' and 'label' are listed above; 'subject' includes 30 volunteers that took part in the study. The other 79 variables below 'label' are from the feature selection, consisting of features' mean() and std() only.

|Variable name|
|---|
|activity|
|subject|
|label|
|tBodyAcc-mean()-X|
|tBodyAcc-mean()-Y|
|tBodyAcc-mean()-Z|
|tBodyAcc-std()-X|
|tBodyAcc-std()-Y|
|tBodyAcc-std()-Z|
|tGravityAcc-mean()-X|
|tGravityAcc-mean()-Y|
|tGravityAcc-mean()-Z|
|tGravityAcc-std()-X|
|tGravityAcc-std()-Y|
|tGravityAcc-std()-Z|
|tBodyAccJerk-mean()-X|
|tBodyAccJerk-mean()-Y|
|tBodyAccJerk-mean()-Z|
|tBodyAccJerk-std()-X|
|tBodyAccJerk-std()-Y|
|tBodyAccJerk-std()-Z|
|tBodyGyro-mean()-X|
|tBodyGyro-mean()-Y|
|tBodyGyro-mean()-Z|
|tBodyGyro-std()-X|
|tBodyGyro-std()-Y|
|tBodyGyro-std()-Z|
|tBodyGyroJerk-mean()-X|
|tBodyGyroJerk-mean()-Y|
|tBodyGyroJerk-mean()-Z|
|tBodyGyroJerk-std()-X|
|tBodyGyroJerk-std()-Y|
|tBodyGyroJerk-std()-Z|
|tBodyAccMag-mean()|
|tBodyAccMag-std()|
|tGravityAccMag-mean()|
|tGravityAccMag-std()|
|tBodyAccJerkMag-mean()|
|tBodyAccJerkMag-std()|
|tBodyGyroMag-mean()|
|tBodyGyroMag-std()|
|tBodyGyroJerkMag-mean()|
|tBodyGyroJerkMag-std()|
|fBodyAcc-mean()-X|
|fBodyAcc-mean()-Y|
|fBodyAcc-mean()-Z|
|fBodyAcc-std()-X|
|fBodyAcc-std()-Y|
|fBodyAcc-std()-Z|
|fBodyAcc-meanFreq()-X|
|fBodyAcc-meanFreq()-Y|
|fBodyAcc-meanFreq()-Z|
|fBodyAccJerk-mean()-X|
|fBodyAccJerk-mean()-Y|
|fBodyAccJerk-mean()-Z|
|fBodyAccJerk-std()-X|
|fBodyAccJerk-std()-Y|
|fBodyAccJerk-std()-Z|
|fBodyAccJerk-meanFreq()-X|
|fBodyAccJerk-meanFreq()-Y|
|fBodyAccJerk-meanFreq()-Z|
|fBodyGyro-mean()-X|
|fBodyGyro-mean()-Y|
|fBodyGyro-mean()-Z|
|fBodyGyro-std()-X|
|fBodyGyro-std()-Y|
|fBodyGyro-std()-Z|
|fBodyGyro-meanFreq()-X|
|fBodyGyro-meanFreq()-Y|
|fBodyGyro-meanFreq()-Z|
|fBodyAccMag-mean()|
|fBodyAccMag-std()|
|fBodyAccMag-meanFreq()|
|fBodyBodyAccJerkMag-mean()|
|fBodyBodyAccJerkMag-std()|
|fBodyBodyAccJerkMag-meanFreq()|
|fBodyBodyGyroMag-mean()|
|fBodyBodyGyroMag-std()|
|fBodyBodyGyroMag-meanFreq()|
|fBodyBodyGyroJerkMag-mean()|
|fBodyBodyGyroJerkMag-std()|
|fBodyBodyGyroJerkMag-meanFreq()|
