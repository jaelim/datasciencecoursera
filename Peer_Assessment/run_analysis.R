# Jae Lim
# Getting and Cleaning Data
# Peer Assessment Project - 4/18/14

setwd("~/datasciencecoursera/Peer_Assessment")

if (!file.exists("data")) {
  dir.create("data")
}

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="./data/dataset.zip", method="curl", quiet=TRUE)
unzip("./data/dataset.zip", exdir="./data")

## STEP 1: Merges the training and the test sets to create one data set.

# Loading Training Data from X_train.txt, y_train.txt & subject_train.txt

xTrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
yTrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subjTrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

# Loading Test Data from X_Test.txt, y_Test.txt & subject_Text.txt

xTest <- read.table("./data/UCI HAR Dataset/Test/X_Test.txt")
yTest <- read.table("./data/UCI HAR Dataset/Test/y_Test.txt")
subjTest <- read.table("./data/UCI HAR Dataset/Test/subject_Test.txt")

# Append X_train.txt & X_test.txt

data <- rbind(xTrain, xTest)

## STEP 2: Extracts only the measurements on the mean and standard deviation for each measurement.

# Load features.txt & Add Measurement Labels

features <- read.table("./data/UCI HAR Dataset/features.txt")
colnames(data) <- features$V2

# Extract the mean() & std() measurements using Regular Expressions.

filteredNames <- grep("-mean\\(\\)|-std\\(\\)", names(data))
filteredData <- data[filteredNames]
names(filteredData)

## STEP 3-4: 1) Uses descriptive activity names to name the activities in the data set.
##           2) Appropriately labels the data set with descriptive measurement names.

# Append subject_train.txt & subject_test.txt

subjects <- rbind(subjTrain, subjTest)
colnames(subjects) <- "subject"

# Append y_Train.txt & y_Test.txt

activityCode <- rbind(yTrain, yTest)

# Load activity_labels.txt & Add activities descriptions

activityLabel <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
activities <- cbind(activityCode, activityLabel$V2[match(activityCode$V1,activityLabel$V1)])
colnames(activities) <- c("activity.code", "activity")

# Re-write data labels (column names) with descriptive names.

n1 <- gsub("\\(\\)","", tolower(names(filteredData)))
n2 <- gsub("^t", "time-", n1)
n3 <- gsub("^f", "frequency-", n2)
n4 <- gsub("(acc)", "-acceleration", n3)
n5 <- gsub("(gyro)", "-angular-velocity", n4)
n6 <- gsub("(mag)", "-magnitude", n5)
n7 <- gsub("(bodybody)", "body", n6)
n8 <- gsub("(jerk)", "-jerk", n7)
n9 <- gsub("(std)", "standard-deviation", n8)
colnames(filteredData) <- n9

# Combine All Data Frames

dataset <- cbind(subjects, activities, filteredData)

## STEP 5: Creates a second, independent tidy data set with the average of each 
##         variable for each activity and each subject.

# Load "reshape2" library

install.packages("reshape2")
library(reshape2)

dataset_m <- melt(dataset, id=c("subject","activity.code","activity"))
tidyDataset <- dcast(dataset_m, subject+activity~variable, mean)

# Write Tidy Dataset to .txt and .csv files

write.table(tidyDataset, file="./data/tidyDataset.txt", row.names=FALSE, col.names=TRUE)
write.csv(tidyDataset, file="./data/tidyDataset.csv", row.names=FALSE)
