## Getting and Cleaning Data - Peer Assessment Project

### README.md
### Author: Jae Lim
### Date: April 22, 2014

### DOWNLOADING RAW DATA

1. Raw data is saved in a Zip file which is downloadable from this linked web:
	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

2. Create a "Data" folder in your "datasciencecoursera" folder if it's not already created.

### STEP 1: Merges the training and the test sets to create one data set.

3. Unzip and load the data into R:
	a. Activity measurements: Load X_train.txt (7352 observations, 561 variables)
		and X_Test.txt (2947 observations, 561 variables)
	b. Activity names: Load y_train.txt (7352 obs, 1 variable)
		and y_test.txt (2947 obs, 1 variable)
	c. Numbered volunteers: Load subject_train.txt (7352 by 1)
		and subject_text.txt (2947 by 1)
		
4. Append X_train.txt & X_test.txt. rbind() function was used to make a raw data table of
	10299 obs, 561 variables.

### STEP 2: Extracts only the measurements on the mean and standard deviation for each measurement.

5. Load features.txt & Add Measurement Labels

6. Extract the mean() & std() measurements using Regular Expressions. There are a total
	of 66 variables extracted into a tidy data table. I used grep() function with regular
	expressions to extract mean and standard deviation variables. A new table for extracted
	variable measurements with dimensions 10299 by 66.
	
## STEP 3-4: 1) Uses descriptive activity names to name the activities in the data set. 
##			 2) Appropriately labels the data set with descriptive measurement names.


7. Translate numeric codes in y_train.txt y_test.txt with word descriptions in 
	activity_labels.txt by using match() function on all rows.
	
8. Combine subjects, activities, filteredData tables into "dataset" table by using 
	cbind() function.

## STEP 5: Creates a second, independent tidy data set with the average of each 
##         variable for each activity and each subject.

9. Load package "reshape2" to use melt() and dcast() functions

10. melt "dataset" table by "subject" and "activity" variables in first 2 columns.

11. Perform mean calculation on variable measurements using dcast() function.

12. Final step for exporting a "tidy dataset" to text file called "tidyDataset.txt"





