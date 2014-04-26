## Getting and Cleaning Data - Peer Assessment Project

* CodeBook.md
* Author: Jae Lim
* Date: April 22, 2014

### Variables:
	* Subject: 30 volunteers.
	* Activity labels:
				1 WALKING, 2 WALKING_UPSTAIRS, 3 WALKING_DOWNSTAIRS, 
				4 SITTING, 5 STANDING, 6 LAYING.
	* Feature/Measurement variables:
				tBodyAcc-XYZ - time body acceleration, XYZ axis
				tGravityAcc-XYZ - time gravity acceleration, XYZ axis
				tBodyAccJerk-XYZ - time body jerk acceleration, XYZ axis
				tBodyGyro-XYZ - time body angular velocity, XYZ axis
				tBodyGyroJerk-XYZ - time body jerk angular velocity, XYZ
				tBodyAccMag - time magnitude body acceleration
				tGravityAccMag - time magnitude gravity aceleration
				tBodyAccJerkMag - time magnitude body jerk velocity
				tBodyGyroMag - time magnitude body angular velocity
				tBodyGyroJerkMag - time magnitude body angular jerk velocity
				fBodyAcc-XYZ - frequency body acceleration, XYZ axis
				fBodyAccJerk-XYZ - freq body jerk acceleration, XYZ axis
				fBodyGyro-XYZ - freq body angular velocity, XYZ axis
				fBodyAccMag - freq magnitude body acceleration
				fBodyAccJerkMag - freq magnitude body jerk acceleration
				fBodyGyroMag - freq magnitude body angular velocity
				fBodyGyroJerkMag - freq magnitude body jerk angular velocity

### Parameters Descriptions:
		Variable measurements records following signal information:
				mean(): Mean value
				std(): Standard deviation
				mad(): Median absolute deviation 
				max(): Largest value in array
				min(): Smallest value in array
				sma(): Signal magnitude area
				energy(): Energy measure. Sum of the squares divided by the number of values. 
				iqr(): Interquartile range 
				entropy(): Signal entropy
				arCoeff(): Autorregresion coefficients with Burg order equal to 4
				correlation(): correlation coefficient between two signals
				maxInds(): index of the frequency component with largest magnitude
				meanFreq(): Weighted average of the frequency components to obtain a mean frequency
				skewness(): skewness of the frequency domain signal 
				kurtosis(): kurtosis of the frequency domain signal 
				bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
				angle(): Angle between to vectors.
				
		Note: I only need mean and standard deviation values for the Peer Assessment.		
		
		Measurements are recorded from the accelerometer and gyroscope in XYZ directions. 
		The measurements are time domain signals recorded at 50 Hz rate, raw signals were 
		filtered at 20 Hz to remove noise, and further filter low-pass frequency at 0.3 Hz.
		Numbers contain in the data files are normalized and unitless.

### Study Design:
		The experiments were designed to involved 30 subjects with ages in 19-48 years. 
		Six key physical activities (3 linear motions and 3 rotational motions) were recorded 
		using Samsung GS2 smartphone equipped with internal accelerometer and gyroscope.