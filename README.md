# Getting-and-Cleaning-Data-Assignment
Repository for the final assignment of the Coursera Getting and Cleaning Data course.

## Contents of the repository

### README.md
This file. Provides a general overview of the contents of the repository.

### run_analysis.R
This script creates a tidy data table, which is the purpose of the assignment. 

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

### tidy_data.txt
This is the resulting table from the above script. It contains the averages, per subject and activity, of features (those including mean and standard deviation measurements) from the 'Human Activity Recognition Using Smartphones Data Set' (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).


It can be read into R through the following code:

``` tidy_data <- read.table(file = "tidy_data.txt", header = TRUE, check.names = FALSE, dec = ".") ```

### Codebook.md
The codebook contains information about the original data set used for the 'tidy data' table, as well as details about its variables and the script used to make it.
