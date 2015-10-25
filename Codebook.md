-Final project for the Coursera course:
Getting and Cleaning Data
by Jeff Leek, PhD, Roger D. Peng, PhD, Brian Caffo, PhD

-The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. 

-information on the raw data:

Downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The data were collected from the accelerometers from the Samsung Galaxy S smartphone.

More information can be found in: 

activity_labels.txt
features.txt
features_info.txt
README.txt

- A tidy data set can be created executing the script: run_analysis.R

The script merges the training and the test sets to create one data set an then 
Extracts only the measurements on the mean and standard deviation for each measurement.
Finally, it creates a tidy data set (tidy_table.txt) with the average of each variable for each activity and each subject.

The file tidy_table.txt has 181 rows and 69 columns. The first row shows variable names.

Detailed description of the variables can be found in the *.txt mentioned above.

Variables included:

subject
actname
activity
tBodyAcc.mean...X
tBodyAcc.mean...Y
tBodyAcc.mean...Z
tGravityAcc.mean...X
tGravityAcc.mean...Y
tGravityAcc.mean...Z
tBodyAccJerk.mean...X
tBodyAccJerk.mean...Y
tBodyAccJerk.mean...Z
tBodyGyro.mean...X
tBodyGyro.mean...Y
tBodyGyro.mean...Z
tBodyGyroJerk.mean...X
tBodyGyroJerk.mean...Y
tBodyGyroJerk.mean...Z
tBodyAccMag.mean..
tGravityAccMag.mean..
tBodyAccJerkMag.mean..
tBodyGyroMag.mean..
tBodyGyroJerkMag.mean..
fBodyAcc.mean...X
fBodyAcc.mean...Y
fBodyAcc.mean...Z
fBodyAccJerk.mean...X
fBodyAccJerk.mean...Y
fBodyAccJerk.mean...Z
fBodyGyro.mean...X
fBodyGyro.mean...Y
fBodyGyro.mean...Z
fBodyAccMag.mean..
fBodyBodyAccJerkMag.mean..
fBodyBodyGyroMag.mean..
fBodyBodyGyroJerkMag.mean..
tBodyAcc.std...X
tBodyAcc.std...Y
tBodyAcc.std...Z
tGravityAcc.std...X
tGravityAcc.std...Y
tGravityAcc.std...Z
tBodyAccJerk.std...X
tBodyAccJerk.std...Y
tBodyAccJerk.std...Z
tBodyGyro.std...X
tBodyGyro.std...Y
tBodyGyro.std...Z
tBodyGyroJerk.std...X
tBodyGyroJerk.std...Y
tBodyGyroJerk.std...Z
tBodyAccMag.std..
tGravityAccMag.std..
tBodyAccJerkMag.std..
tBodyGyroMag.std..
tBodyGyroJerkMag.std..
fBodyAcc.std...X
fBodyAcc.std...Y
fBodyAcc.std...Z
fBodyAccJerk.std...X
fBodyAccJerk.std...Y
fBodyAccJerk.std...Z
fBodyGyro.std...X
fBodyGyro.std...Y
fBodyGyro.std...Z
fBodyAccMag.std..
fBodyBodyAccJerkMag.std..
fBodyBodyGyroMag.std..
fBodyBodyGyroJerkMag.std..