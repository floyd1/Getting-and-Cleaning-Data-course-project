# Getting and Cleaning Data course project

## 1. Setting the working directory

For the script to work properly, the Samsung data files must be located in the directory "UCI HAR Dataset" within your working directory, like so:

  "./UCI HAR Dataset/"
  
And the file run_analysis.R must be downloaded to the working directory:

  "./run_analysis.R"

For more info, please refer to community TA Greg D. Horne's post here: https://class.coursera.org/getdata-030/forum/thread?thread_id=214 

According to Greg:

"If you store the data files within the directory containing the R script, you can use relative paths to point to the data files.

"Example:

"The R script and codebook are at /home/me/tidydata. The UCI data archive is downloaded to the same directory and its contents extracted so that the data files are in the subdirectory named UCI_HAR, for instance.

/home/me/tidydata
/home/me/tidydata/myscript.R
/home/me/tidydata/mycodebook.md
/home/me/tidydata/dataarchive.zip
/home/me/tidydata/UCI_HAR/(multiple files herein)"

## 2. Libraries

The script uses two libraries: "dplyr" and "readr". 

If those aren't installed, please run install.packages() for "dplyr" and "readr".

## 3. Running the script

All of the steps are thoroughly commented within the script itself, but to give a quick summary of the steps:

1. All of the data is read into R.
2. Variable names (columns) are renamed into their proper feature names.
3. Subjects, labels, and features are merged column-wise, for both test and train sets (PJtest and PJtrain, respectively).
4. The aggregated test and train sets are merged row-wise. Merged dataset is stored in PJtrain_test.
5. A new dataset (PJtrain_test_MeanStd) is formed that includes only the mean and standard deviation variables.
6. A new first column, "activity", is added to PJtrain_test_MeanStd with descriptive activity names.
7. An independent tidy data set, avgByActivitySubject, is generated from PJtrain_test_MeanStd with the average of each variable for each activity and each subject.
8. Finally, the script generates a data view of avgByActivitySubject, called "Averages by Activity and Subject".
