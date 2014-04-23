## Getting and Cleaning Data - Peer Assessment Project

* CodeBook.md
* Author: Jae Lim
* Date: April 22, 2014

### Variables:
	* Subjects: 30 participants.
	* Activity labels: 1 WALKING, 2 WALKING_UPSTAIRS, 3 WALKING_DOWNSTAIRS, 4 SITTING, 
			5 STANDING, 6 LAYING.
	* Feature/Measurement variables: tBodyAcc-XYZ, tGravityAcc-XYZ, tBodyAccJerk-XYZ, 
			tBodyGyro-XYZ, tBodyGyroJerk-XYZ, tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, 
			tBodyGyroMag, tBodyGyroJerkMag, fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, 
			fBodyAccMag, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag.

### Parameters Descriptions:
		Each motion measurement contains information about mean and standard deviation. 
		Measurements are recorded from the accelerometer and gyroscope in XYZ directions. 
		The measurements are time domain signals recorded at 50 Hz rate, raw signals were 
		filtered at 20 Hz to remove noise, and further filter low-pass frequency at 0.3 Hz.

### Study Design:
		The experiments were designed to involved 30 subjects with ages in 19-48 years. 
		Six key physical activities (3 linear motions and 3 rotational motions) were recorded 
		using Samsung GS2 smartphone equipped with internal accelerometer and gyroscope.