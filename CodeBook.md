Code Book - Coursera - Getting and Cleaning Data - Week 3 Assignment
====================================================================

This code book provides information about the source of data used, changes that was made after collecting data, as well as information about the variables of our data sets. 

Study Design
------------

The source data was collected from the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
This assignment is part of a Coursera course named [Getting and Cleaning Data](https://class.coursera.org/getdata-031).
The assignment involved working with the [data set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and producing tidy data representation of the source data following the instructions described below

1. Download the [data set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
2. Unzip the data set into your working directory
3. Import test and training data sets into data frames
4. Import source variable names for test and training data sets
5. Import activity labels
6. Combine test and training data frames using rbind
7. Pair down the data frames to only include mean and standard deviation
8. Replace activity IDs with the activity labels for readability
9. Combine data frames to produce one data frame containing the subjects, measurements and activities
10. Produce "tidy_data.txt" with the combined data frame as the first expected output
11. Create another data set using the data.table library to easily group the tidy data by subject and activity
12. Then apply the mean and standard deviation calculations across the groups
13. Produce "calculated_tidy_data.txt" as the second expected output

Code book
---------

- subjectId: 1 to 30 each representing a participant in the study
- activity: the activity that the subject was doing at the time of the measurement
- tBodyAcc-mean-X        
- tBodyAcc-mean-Y
- tBodyAcc-mean-Z
- tBodyAcc-std-X
- tBodyAcc-std-Y
- tBodyAcc-std-Z
- tGravityAcc-mean-X
- tGravityAcc-mean-Y
- tGravityAcc-mean-Z
- tGravityAcc-std-X
- tGravityAcc-std-Y
- tGravityAcc-std-Z
- tBodyAccJerk-mean-X
- tBodyAccJerk-mean-Y
- tBodyAccJerk-mean-Z
- tBodyAccJerk-std-X
- tBodyAccJerk-std-Y
- tBodyAccJerk-std-Z
- tBodyGyro-mean-X
- tBodyGyro-mean-Y
- tBodyGyro-mean-Z
- tBodyGyro-std-X
- tBodyGyro-std-Y
- tBodyGyro-std-Z
- tBodyGyroJerk-mean-X
- tBodyGyroJerk-mean-Y
- tBodyGyroJerk-mean-Z
- tBodyGyroJerk-std-X
- tBodyGyroJerk-std-Y
- tBodyGyroJerk-std-Z
- tBodyAccMag-mean
- tBodyAccMag-std
- tGravityAccMag-mean
- tGravityAccMag-std
- tBodyAccJerkMag-mean
- tBodyAccJerkMag-std
- tBodyGyroMag-mean
- tBodyGyroMag-std
- tBodyGyroJerkMag-mean
- tBodyGyroJerkMag-std
- fBodyAcc-mean-X
- fBodyAcc-mean-Y
- fBodyAcc-mean-Z
- fBodyAcc-std-X
- fBodyAcc-std-Y
- fBodyAcc-std-Z
- fBodyAccJerk-mean-X
- fBodyAccJerk-mean-Y
- fBodyAccJerk-mean-Z
- fBodyAccJerk-std-X
- fBodyAccJerk-std-Y
- fBodyAccJerk-std-Z
- fBodyGyro-mean-X
- fBodyGyro-mean-Y
- fBodyGyro-mean-Z
- fBodyGyro-std-X
- fBodyGyro-std-Y
- fBodyGyro-std-Z
- fBodyAccMag-mean
- fBodyAccMag-std
- fBodyBodyAccJerkMag-mean
- fBodyBodyAccJerkMag-std
- fBodyBodyGyroMag-mean
- fBodyBodyGyroMag-std
- fBodyBodyGyroJerkMag-mean
- fBodyBodyGyroJerkMag-std