Preparing Samsung Galaxy S smartphone accelerometer data for analysis
========================================================

This document explains how the **run_analysis.R** script works to get and
prepare the Samsung Galaxy S smartphone accelerometer data for analysis.  

----------

First, the script will search for the zipped dataset in the current working
directory. If file is missing, the script will download it from this link:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

With the zipped file in the working directory, the script unzips the contents and
reads the following training and test sets into R, along with their respective
activity labels and subject identifiers:
* **X_train.txt**
* **X_test.txt**
* **y_train.txt**
* **y_test.txt**
* **subject_train.txt**
* **subject_test.txt**

After joining to their repective labels and identifiers, the training and test
sets will be merged into a single dataframes (`mergeddata`) and ordered by subject
ID (`Subject`) and activity type (`Activity`). 

Next the script reads in feature labels for the variables from **features.txt**.
Variables that were measurements on the mean and standard deviation of each 
measurement (identified by `mean()` and `std()` in their labels) will be 
extracted to a separate dataframe called `step4data`. 
Descriptive activity names and variable names will be assigned respectively to 
activities and variables in this dataset.

Lastly, the script creates the final dataset called `tidydata`, which is the 
average of each variable for each activity and each subject.
This is done by first unclassing dataset and using the `sapply` function to
calulate the mean of all variables by `Activity` and `Subject`. 
The activties in the summarized dataset will then be renamed as factor variables. 

The final dataset will be written to **TidyData.txt** in the current working 
directory, and then the script will end.
