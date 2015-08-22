# Coursera: Getting and Cleaning Data (Week 3 Assignment) - 08/2015


run_analysis <- function(){
  # importing test data  
  subject_test = read.table("UCI HAR Dataset/test/subject_test.txt")
  X_test = read.table("UCI HAR Dataset/test/X_test.txt")
  Y_test = read.table("UCI HAR Dataset/test/Y_test.txt")
  
  # importing training data
  subject_train = read.table("UCI HAR Dataset/train/subject_train.txt")
  X_train = read.table("UCI HAR Dataset/train/X_train.txt")
  Y_train = read.table("UCI HAR Dataset/train/Y_train.txt")
  
  # importing lookup information
  features <- read.table("UCI HAR Dataset/features.txt", col.names=c("featureId", "featureLabel"))
  activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names=c("activityId", "activityLabel"))
  activities$activityLabel <- gsub("_", "", as.character(activities$activityLabel))
  includedFeatures <- grep("-mean\\(\\)|-std\\(\\)", features$featureLabel)
  
  # merging test and training data
  # naming data
  subject <- rbind(subject_test, subject_train)
  names(subject) <- "subjectId"
  X <- rbind(X_test, X_train)
  X <- X[, includedFeatures]
  names(X) <- gsub("\\(|\\)", "", features$featureLabel[includedFeatures])
  Y <- rbind(Y_test, Y_train)
  names(Y) = "activityId"
  activity <- merge(Y, activities, by="activityId")$activityLabelrun_
  
  # merging data frames of different columns to form one data table
  data <- cbind(subject, X, activity)
  write.table(data, "tidy_data.txt")
  
  # create a dataset grouped by subject and activity after applying standard deviation and average calculations
  library(data.table)
  dataDT <- data.table(data)
  calculatedData<- dataDT[, lapply(.SD, mean), by=c("subjectId", "activity")]
  write.table(calculatedData, "calculated_tidy_data.txt")
}