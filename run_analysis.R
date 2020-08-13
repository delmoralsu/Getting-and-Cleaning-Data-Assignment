## Load necessary libraries
library(dplyr)
library(reshape2)
## Import the necessary data tables
  ## Test tables
    ytest <- read.table("y_test.txt")
    Xtest <- read.table("X_test.txt")
    subjecttest <- read.table("subject_test.txt")
  ## Train tables
    ytrain <- read.table("y_train.txt")
    Xtrain <- read.table("X_train.txt")
    subjecttrain <- read.table("subject_train.txt")
  ## Table with the feature names
    featurenames <- read.table("features.txt")
      ## Vectorize the feature names table
        featurenames <- as.vector(featurenames$V2)
## Create the tables
  ## Test table
    test <- cbind(subject = subjecttest$V1,
                  activity = ytest$V1,
                  Xtest)
    ## Remove components of test table
      rm(subjecttest, Xtest, ytest)
  ## Train table
    train <- cbind(subject = subjecttrain$V1,
                   activity = ytrain$V1,
                   Xtrain)
    ## Remove compnents of train table
      rm(subjecttrain, ytrain, Xtrain)
## Merge the tables into one data frame, and delete the separate ones
  df <- merge(test, train, all = TRUE)
  rm(test, train)
## Name the data frame
  colnames(df) <- c("subject", "activity", featurenames)
  rm(featurenames)
## Extract only the measurements on the mean and standard 
## deviation for each measurement
  measurements <- c("mean()", "std()")
  df <- select(df, 1:2, contains(measurements))
  rm(measurements)
## Add descriptive names to the activities
  activitynames <- c("walking", "walking upstairs", "walking downstairs",
                    "sitting", "standing", "laying")
  for(i in 1:6){
    df$activity <- gsub(i, activitynames[i], df$activity)
  }
  rm(i, activitynames)
## Correct the names of the variables, following R naming conventions
  variablenames <- gsub("-", "", colnames(df))
  variablenames <- gsub("\\(\\)", "", variablenames)
  colnames(df) <- tolower(variablenames)
## Melt data frame into a long format to make calculating mean easier
  melteddf <- melt(df, id.vars = c("subject", "activity"), 
                   measure.vars = tolower(variablenames[3:68]))
  rm(variablenames)
## Casta data frame into wide format, calculating mean for each 
## activity and subject combination
  df2 <- dcast(melteddf, subject + activity~variable, mean)
  rm(melteddf)
## Write tidy dataset
  write.table(df2, file ="tidy_data.txt", row.name = FALSE)
## End! :)

