# GettingAndCleaningData

This is the project work for the Coursera Getting and Cleaning Data course. It contains the final assignment as written by me: Ilja Heitlager.

This project is processing the Samsung Galaxy S smartphone data and contains one R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one data set.
1. Extracts only the measurements on the mean and standard deviation for each measurement.
1. Uses descriptive activity names to name the activities in the data set
1. Appropriately labels the data set with descriptive variable names.
1. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

To run execute the following

```bash
> git clone https://github.com/iheitlager/GettingAndCleaningData.git
> cd GettingAndCleaningData
> run_analysis.R
```

The output are two files ```result1.txt``` as is attached to the first question and ```result2_averages.csv``` with a summary of the averages

The first file ```result1.txt``` has the following code book

* ID: global record identifier, numeric
* subject: subject belonging to this observation as enumerated in subject_test.txt, subject_train.txt files
* activity: activity level description in expanded form and has the following values
** WALKING (1)
** WALKING_UPSTAIRS (2)
** WALKING_DOWNSTAIRS (3)
** SITTING (4)
** STANDING (5)
** LAYING (6)
* The following values are 81 measurements divided into several groups, all values are floats. The naming convention is [name]-[aggregation-function]-[Direction], the last option direction only if applies. The groups are:
** tBodyAcc-mean()-X,tBodyAcc-mean()-Y,tBodyAcc-mean()-Z,tBodyAcc-std()-X,tBodyAcc-std()-Y,tBodyAcc-std()-Z
** tGravityAcc-mean()-X,tGravityAcc-mean()-Y,tGravityAcc-mean()-Z,tGravityAcc-std()-X,tGravityAcc-std()-Y,tGravityAcc-std()-Z
** tBodyAccJerk-mean()-X,tBodyAccJerk-mean()-Y,tBodyAccJerk-mean()-Z,tBodyAccJerk-std()-X,tBodyAccJerk-std()-Y,tBodyAccJerk-std()-Z
** tBodyGyro-mean()-X,tBodyGyro-mean()-Y,tBodyGyro-mean()-Z,tBodyGyro-std()-X,tBodyGyro-std()-Y,tBodyGyro-std()-Z
** tBodyGyroJerk-mean()-X,tBodyGyroJerk-mean()-Y,tBodyGyroJerk-mean()-Z,tBodyGyroJerk-std()-X,tBodyGyroJerk-std()-Y,tBodyGyroJerk-std()-Z
** tBodyAccMag-mean(),tBodyAccMag-std()
** tGravityAccMag-mean(),tGravityAccMag-std()
** tBodyAccJerkMag-mean(),tBodyAccJerkMag-std()
** tBodyGyroMag-mean(),tBodyGyroMag-std()
** tBodyGyroJerkMag-mean(),tBodyGyroJerkMag-std()
** fBodyAcc-mean()-X,fBodyAcc-mean()-Y,fBodyAcc-mean()-Z
** fBodyAcc-std()-X,fBodyAcc-std()-Y,fBodyAcc-std()-Z
** fBodyAcc-meanFreq()-X,fBodyAcc-meanFreq()-Y,fBodyAcc-meanFreq()-Z
** fBodyAccJerk-mean()-X,fBodyAccJerk-mean()-Y,fBodyAccJerk-mean()-Z
** fBodyAccJerk-std()-X,fBodyAccJerk-std()-Y,fBodyAccJerk-std()-Z
** fBodyAccJerk-meanFreq()-X,fBodyAccJerk-meanFreq()-Y,fBodyAccJerk-meanFreq()-Z
** fBodyGyro-mean()-X,fBodyGyro-mean()-Y,fBodyGyro-mean()-Z
** fBodyGyro-std()-X,fBodyGyro-std()-Y,fBodyGyro-std()-Z
** fBodyGyro-meanFreq()-X,fBodyGyro-meanFreq()-Y,fBodyGyro-meanFreq()-Z
** fBodyAccMag-mean(),fBodyAccMag-std(),fBodyAccMag-meanFreq()
** fBodyBodyAccJerkMag-mean(),fBodyBodyAccJerkMag-std(),fBodyBodyAccJerkMag-meanFreq()
** fBodyBodyGyroMag-mean(),fBodyBodyGyroMag-std(),fBodyBodyGyroMag-meanFreq()
** fBodyBodyGyroJerkMag-mean(),fBodyBodyGyroJerkMag-std(),fBodyBodyGyroJerkMag-meanFreq()
