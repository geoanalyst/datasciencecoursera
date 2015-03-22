---
title: "CodeBook.md"
author: "Geoanalyst"
date: "21.03.2015"
output: html_document
---
#Datasets:
For analysis used data:

1. X_test.txt - test data measurements;

2. X_train.txt - train data measurements;

3. y_test.txt - test data activity id's;

4. y_train.txt - train data activity id's;

5. activity_labels.txt - data with activity id's and descriptions;

6. subject_train.txt - train data subject id's;

7. subject_test.txt - test data subject id's.


#Data Transformation Algorithm

1. Convert data into 'dplyr' tbl_dt format;

2. Merging the training and the test sets to create one data set;

3. Extracting only the measurements on the mean and standard deviation for each measurement;

4. Getting labels the data set with descriptive variable names;

5. Creating tidy dataset using group_by and summarise_each functions.

#Variables description

subject_id - identifier of subject;

activity_name - activity's description;

tBodyAcc-mean()-X - mean value for body acceleration time in X direction;

tBodyAcc-mean()-Y - mean value for body acceleration time in Y direction;

tBodyAcc-mean()-Z - mean value for body acceleration time in Z direction;

tGravityAcc-mean()-X - mean value for gravity acceleration time in X direction;

tGravityAcc-mean()-Y - mean value for gravity acceleration time in Y direction;

tGravityAcc-mean()-Z - mean value for gravity acceleration time in Z direction;

tBodyAccJerk-mean()-X - mean value for body acceleration (Jerk signals) time in X direction;

tBodyAccJerk-mean()-Y - mean value for body acceleration (Jerk signals) time in Y direction;

tBodyAccJerk-mean()-Z - mean value for body acceleration (Jerk signals) time in Z direction;

tBodyGyro-mean()-X - mean value for body gyroscop time measure in X direction;

tBodyGyro-mean()-Y - mean value for body gyroscop time measure in Y direction;

tBodyGyro-mean()-Z - mean value for body gyroscop time measure in Z direction;

tBodyGyroJerk-mean()-X - mean value for body gyroscop time measure (Jerk signals) in X direction;

tBodyGyroJerk-mean()-Y - mean value for body gyroscop time measure (Jerk signals) in Y direction;

tBodyGyroJerk-mean()-Z - mean value for body gyroscop time measure (Jerk signals) in Z direction;

tBodyAccMag-mean() - mean value for body acceleration magnitude time;

tGravityAccMag-mean() - mean value for gravity acceleration magnitude time;

tBodyAccJerkMag-mean() - mean value for body acceleration magnitude (Jerk signals) time;

tBodyGyroMag-mean() - mean value for body gyroscop magnitude time;

tBodyGyroJerkMag-mean() - mean value for body gyroscop (Jerk signals) magnitude time;

fBodyAcc-mean()-X - Fast Fourier Transform (FFT) mean value for body acceleration time in X direction;

fBodyAcc-mean()-Y - Fast Fourier Transform (FFT) mean value for body acceleration time in Y direction;

fBodyAcc-mean()-Z - Fast Fourier Transform (FFT) mean value for body acceleration time in Z direction;

fBodyAcc-meanFreq()-X - Fast Fourier Transform (FFT) mean value for body acceleration frequency in X direction;

fBodyAcc-meanFreq()-Y - Fast Fourier Transform (FFT) mean value for body acceleration frequency in Y direction;

fBodyAcc-meanFreq()-Z - Fast Fourier Transform (FFT) mean value for body acceleration frequency in Z direction;

fBodyAccJerk-mean()-X - Fast Fourier Transform (FFT) mean value for body acceleration (Jerk signals) time in X direction;

fBodyAccJerk-mean()-Y - Fast Fourier Transform (FFT) mean value for body acceleration (Jerk signals) time in Y direction;

fBodyAccJerk-mean()-Z - Fast Fourier Transform (FFT) mean value for body acceleration (Jerk signals) time in Z direction;

etc.