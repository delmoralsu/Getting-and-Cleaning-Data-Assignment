---
title: "Codebook"
author: "Diego del Moral"
date: "13/8/2020"
---

This is the codebook for the final assignment of the 'Getting and Cleaning Data' Coursera course. It provides details about the data set used, its source, its different variables. Information about the resulting data set, and how it was created, is also provided.

### Source data set

This assignment used the 'Human Activity Recognition Using Smartphones Data Set', built from the recording of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

The scientists behind these experiments and this data set are: Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto and Xavier Parra.

The data set was downloaded from this link http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip on August 12 2020.

### Variables of the tidy data set
As per the assignment's instructions, the source data set was tidied up into a tidy data set

The tidy data set has a total of 68 variables. The first two, 'subject' and 'activity' are used to identify each observation.

* subject: 1 to 30, identifies the subject.
* activity: identifies the type of activity; walking, walking upstairs, walking downstairs, sitting, standing, and laying.

The rest are the averages of several mean and standard deviation measurements of the selected features, as registered by the smartphone's gyroscope. 

* tbodyaccmeanx
* tbodyaccmeany
* tbodyaccmeanz
* tbodyaccstdx
* tbodyaccstdy
* tbodyaccstdz
* tgravityaccmeanx
* tgravityaccmeany
* tgravityaccmeanz
* tgravityaccstdx
* tgravityaccstdy
* tgravityaccstdz
* tbodyccjerkmeanx
* tbodyaccjerkmeany
* tbodyaccjerkmeanz
* tbodyaccjerkstdx
* tbodyaccjerkstdy
* tbodyaccjerkstdz
* tbodygyromeanx
* tbodygyromeany
* tbodygyromeanz
* tbodygyrostdx
* tbodygyrostdy
* tbodygyrostdz
* tbodygyrojerkmeanx
* tbodygyrojerkmeany
* tbodygyrojerkmeanz
* tbodygyrojerkstdx
* tbodygyrojerkstdy
* tbodygyrojerkstdz
* tbodyaccmagmean
* tbodyaccmagstd
* tgravityaccmagmean
* tgravityaccmagstd
* tbodyaccjerkmagmean
* tbodyaccjerkmagstd
* tbodygyromagmean
* tbodygyromagstd
* tbodygyrojerkmagmean
* tbodygyrojerkmagstd
* fbodyaccmeanx
* fbodyaccmeany
* fbodyaccmeanz
* fbodyaccstdx
* fbodyaccstdy
* fbodyaccstdz
* fbodyaccjerkmeanx
* fbodyaccjerkmeany
* fbodyaccjerkmeanz
* fbodyaccjerkstdx
* fbodyaccjerkstdy
* fbodyaccjerkstdz
* fbodygyromeanx
* fbodygyromeany
* fbodygyromeanz
* fbodygyrostdx
* fbodygyrostdy
* fbodygyrostdz
* fbodyaccmagmean
* fbodyaccmagstd
* fbodybodyaccjerkmagmean
* fbodybodyaccjerkmagstd
* fbodybodygyromagmean
* fbodybodygyromagstd
* fbodybodygyrojerkmagmean
* fbodybodygyrojerkmagstd

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

## Tydying the data set

The tidy data set can be reproduced through the run_analysis.R script, present in this repository. 

* The following files (downloaded from http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip) must be directly in the working directory or the script will not work:
  + 'y_test.txt', 'y_train.txt', 'X_test.txt', 'X_train.txt', 'subject_test.txt', 'subject_train.txt', 'features.txt'.
* Packages 'dplyr' and 'reshape2' must be installed.

The 'run_analysis.R' script performs the following tasks to create the tidy data set:

1. Creates a 'Train' data frame by binding the following files:
* subject_train.txt
* X_train.txt
* y_train.txt

2. Creates a 'Test' data frame by binding the following files:
* subject_test.txt
* X_test.txt
* y_test.txt

3. 'Test' and 'Train' data frames are combined into one larger data frame.

4. Names are assigned to each of the measurement variables through the features list (features.txt).

5. As per the assignment's instructions, only the features with mean and standard deviation measurements are extracted into a data frame.

6. Descriptive names are added to the activities and the variable names are corrected and standardized (lower case, removal of hyphens).

7. A new data table is created from the average of each variable according to 'subject' and 'activity'.

8. Finally, the data is written into a text file in the working directory.

``` write.table(tidy_data_summary, "tidy_data_summary.txt", row.names = FALSE) ```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
