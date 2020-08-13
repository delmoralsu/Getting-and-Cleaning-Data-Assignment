---
title: "Codebook"
author: "Diego del Moral"
date: "13/8/2020"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Codebook

This is the codebook for the final assignment of the 'Getting and Cleaning Data' Coursera course. It provides details about the data set used, its source, its different variables. Information about the resulting data set, and how it was created, is also provided.

### Source data set

This assignment used the 'Human Activity Recognition Using Smartphones Data Set', built from the recording of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. 
The scientists behind these experiments and this data set are: Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto and Xavier Parra.
The data set was downloaded from this link http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip on August 12 2020.

### Variables
The data set has a total of 68 variables.
The first two, 'subject' and 'activity' are used to identify each observation.
..* subject: 1 to 30, identifies the subject.
..* activity: identifies the type of activity; walking, walking upstairs, walking downstairs, sitting, standing, and laying.
The rest are measurements of several features, as registered by the smartphone's gyroscope.
..*tBodyAcc-mean-X
..*tBodyAcc-mean-Y
..*tBodyAcc-mean-Z
..*tBodyAcc-std-X
..*tBodyAcc-std-Y
..*tBodyAcc-std-Z
..*tGravityAcc-mean-X
..*tGravityAcc-mean-Y
..*tGravityAcc-mean-Z
..*tGravityAcc-std-X
..*tGravityAcc-std-Y
..*tGravityAcc-std-Z
..*tBodyAccJerk-mean-X
..*tBodyAccJerk-mean-Y
..*tBodyAccJerk-mean-Z
..*tBodyAccJerk-std-X
..*tBodyAccJerk-std-Y
..*tBodyAccJerk-std-Z
..*tBodyGyro-mean-X
..*tBodyGyro-mean-Y
..*tBodyGyro-mean-Z
..*tBodyGyro-std-X
..*tBodyGyro-std-Y
..*tBodyGyro-std-Z
..*tBodyGyroJerk-mean-X
..*tBodyGyroJerk-mean-Y
..*tBodyGyroJerk-mean-Z
..*tBodyGyroJerk-std-X
..*tBodyGyroJerk-std-Y
..*tBodyGyroJerk-std-Z
..*tBodyAccMag-mean
..*tBodyAccMag-std
..*tGravityAccMag-mean
..*tGravityAccMag-std
..*tBodyAccJerkMag-mean
..*tBodyAccJerkMag-std
..*tBodyGyroMag-mean
..*tBodyGyroMag-std
..*tBodyGyroJerkMag-mean
..*tBodyGyroJerkMag-std
..*fBodyAcc-mean-X
..*fBodyAcc-mean-Y
..*fBodyAcc-mean-Z
..*fBodyAcc-std-X
..*fBodyAcc-std-Y
..*fBodyAcc-std-Z
..*fBodyAccJerk-mean-X
..*fBodyAccJerk-mean-Y
..*fBodyAccJerk-mean-Z
..*fBodyAccJerk-std-X
..*fBodyAccJerk-std-Y
..*fBodyAccJerk-std-Z
..*fBodyGyro-mean-X
..*fBodyGyro-mean-Y
..*fBodyGyro-mean-Z
..*fBodyGyro-std-X
..*fBodyGyro-std-Y
..*fBodyGyro-std-Z
..*fBodyAccMag-mean
..*fBodyAccMag-std
..*fBodyBodyAccJerkMag-mean
..*fBodyBodyAccJerkMag-std
..*fBodyBodyGyroMag-mean
..*fBodyBodyGyroMag-std
..*fBodyBodyGyroJerkMag-mean
..*fBodyBodyGyroJerkMag-std


```{r cars}
summary(cars)
```

## Including Plots

You can also embed plots, for example:

```{r pressure, echo=FALSE}
plot(pressure)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
