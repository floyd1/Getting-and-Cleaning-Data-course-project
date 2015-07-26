# Data Dictionary


The first tidy data set (PJtrain_test) consists of the following variables: 'subject', 'label', and the entire list of 561 features, which are described in 'features_info.txt'. The complete list of variables of each feature vector is available in 'features.txt'. 

The following variables make up the second tidy data set (avgByActivitySubject): 'activity' and 'label' are listed above; 'subject' includes 30 volunteers that took part in the study; the other 79 variables below 'label' are from the feature selection, consisting of features' mean() and std() only.

|Variable name	|Units	|Domain
|---|	---|	---|
|activity|	character|	|
|subject|	integer|	1:30|
|label|	integer|	1:6|
|tBodyAcc-mean()-X|	numeric|	[-1,1]|
|tBodyAcc-mean()-Y|	numeric|	[-1,1]|
|tBodyAcc-mean()-Z|	numeric|	[-1,1]|
|tBodyAcc-std()-X|	numeric|	[-1,1]|
|tBodyAcc-std()-Y|	numeric|	[-1,1]|
|tBodyAcc-std()-Z|	numeric|	[-1,1]|
|tGravityAcc-mean()-X|	numeric|	[-1,1]|
|tGravityAcc-mean()-Y|	numeric|	[-1,1]|
|tGravityAcc-mean()-Z|	numeric|	[-1,1]|
|tGravityAcc-std()-X|	numeric|	[-1,1]|
|tGravityAcc-std()-Y|	numeric|	[-1,1]|
|tGravityAcc-std()-Z|	numeric|	[-1,1]|
|tBodyAccJerk-mean()-X|	numeric|	[-1,1]|
|tBodyAccJerk-mean()-Y|	numeric|	[-1,1]|
|tBodyAccJerk-mean()-Z|	numeric|	[-1,1]|
|tBodyAccJerk-std()-X|	numeric|	[-1,1]|
|tBodyAccJerk-std()-Y|	numeric|	[-1,1]|
|tBodyAccJerk-std()-Z|	numeric|	[-1,1]|
|tBodyGyro-mean()-X|	numeric|	[-1,1]|
|tBodyGyro-mean()-Y|	numeric|	[-1,1]|
|tBodyGyro-mean()-Z|	numeric|	[-1,1]|
|tBodyGyro-std()-X|	numeric|	[-1,1]|
|tBodyGyro-std()-Y|	numeric|	[-1,1]|
|tBodyGyro-std()-Z|	numeric|	[-1,1]|
|tBodyGyroJerk-mean()-X|	numeric|	[-1,1]|
|tBodyGyroJerk-mean()-Y|	numeric|	[-1,1]|
|tBodyGyroJerk-mean()-Z|	numeric|	[-1,1]|
|tBodyGyroJerk-std()-X|	numeric|	[-1,1]|
|tBodyGyroJerk-std()-Y|	numeric|	[-1,1]|
|tBodyGyroJerk-std()-Z|	numeric|	[-1,1]|
|tBodyAccMag-mean()|	numeric|	[-1,1]|
|tBodyAccMag-std()|	numeric|	[-1,1]|
|tGravityAccMag-mean()|	numeric|	[-1,1]|
|tGravityAccMag-std()|	numeric|	[-1,1]|
|tBodyAccJerkMag-mean()|	numeric|	[-1,1]|
|tBodyAccJerkMag-std()|	numeric|	[-1,1]|
|tBodyGyroMag-mean()|	numeric|	[-1,1]|
|tBodyGyroMag-std()|	numeric|	[-1,1]|
|tBodyGyroJerkMag-mean()|	numeric|	[-1,1]|
|tBodyGyroJerkMag-std()|	numeric|	[-1,1]|
|fBodyAcc-mean()-X|	numeric|	[-1,1]|
|fBodyAcc-mean()-Y|	numeric|	[-1,1]|
|fBodyAcc-mean()-Z|	numeric|	[-1,1]|
|fBodyAcc-std()-X|	numeric|	[-1,1]|
|fBodyAcc-std()-Y|	numeric|	[-1,1]|
|fBodyAcc-std()-Z|	numeric|	[-1,1]|
|fBodyAcc-meanFreq()-X|	numeric|	[-1,1]|
|fBodyAcc-meanFreq()-Y|	numeric|	[-1,1]|
|fBodyAcc-meanFreq()-Z|	numeric|	[-1,1]|
|fBodyAccJerk-mean()-X|	numeric|	[-1,1]|
|fBodyAccJerk-mean()-Y|	numeric|	[-1,1]|
|fBodyAccJerk-mean()-Z|	numeric|	[-1,1]|
|fBodyAccJerk-std()-X|	numeric|	[-1,1]|
|fBodyAccJerk-std()-Y|	numeric|	[-1,1]|
|fBodyAccJerk-std()-Z|	numeric|	[-1,1]|
|fBodyAccJerk-meanFreq()-X|	numeric|	[-1,1]|
|fBodyAccJerk-meanFreq()-Y|	numeric|	[-1,1]|
|fBodyAccJerk-meanFreq()-Z|	numeric|	[-1,1]|
|fBodyGyro-mean()-X|	numeric|	[-1,1]|
|fBodyGyro-mean()-Y|	numeric|	[-1,1]|
|fBodyGyro-mean()-Z|	numeric|	[-1,1]|
|fBodyGyro-std()-X|	numeric|	[-1,1]|
|fBodyGyro-std()-Y|	numeric|	[-1,1]|
|fBodyGyro-std()-Z|	numeric|	[-1,1]|
|fBodyGyro-meanFreq()-X|	numeric|	[-1,1]|
|fBodyGyro-meanFreq()-Y|	numeric|	[-1,1]|
|fBodyGyro-meanFreq()-Z|	numeric|	[-1,1]|
|fBodyAccMag-mean()|	numeric|	[-1,1]|
|fBodyAccMag-std()|	numeric|	[-1,1]|
|fBodyAccMag-meanFreq()|	numeric|	[-1,1]|
|fBodyBodyAccJerkMag-mean()|	numeric|	[-1,1]|
|fBodyBodyAccJerkMag-std()|	numeric|	[-1,1]|
|fBodyBodyAccJerkMag-meanFreq()|	numeric|	[-1,1]|
|fBodyBodyGyroMag-mean()|	numeric|	[-1,1]|
|fBodyBodyGyroMag-std()|	numeric|	[-1,1]|
|fBodyBodyGyroMag-meanFreq()|	numeric|	[-1,1]|
|fBodyBodyGyroJerkMag-mean()|	numeric|	[-1,1]|
|fBodyBodyGyroJerkMag-std()|	numeric|	[-1,1]|
|fBodyBodyGyroJerkMag-meanFreq()|	numeric|	[-1,1]|

The following variables were omitted from the avgByActivitySubject data set, as they are measures of angles, not means:

|Variable name	|
|---|
|angle(tBodyAccMean,gravity)|	numeric|	[-1,1]|
|angle(tBodyAccJerkMean),gravityMean)|	numeric|	[-1,1]|
|angle(tBodyGyroMean,gravityMean)|	numeric|	[-1,1]|
|angle(tBodyGyroJerkMean,gravityMean)|	numeric|	[-1,1]|
|angle(X,gravityMean)|	numeric|	[-1,1]|
|angle(Y,gravityMean)|	numeric|	[-1,1]|
|angle(Z,gravityMean)|	numeric|	[-1,1]|

Activity labels consist of the following:

label | activity
--- | ---
1 | WALKING
2 | WALKING_UPSTAIRS
3 | WALKING_DOWNSTAIRS
4 | SITTING
5 | STANDING
6 | LAYING
