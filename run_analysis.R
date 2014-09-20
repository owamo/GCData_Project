## Download and unzip data if does not exist on working directory
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
fileZIP <- "getdata_projectfiles_UCI HAR Dataset.zip"
if (!file.exists(fileZIP)){
        download.file(fileURL, destfile = fileZIP)
        unzip("getdata_projectfiles_UCI HAR Dataset.zip")
}

## Load training dataset and merge with activity labels and subject identifier
train_data <- read.table("./UCI HAR Dataset/train/X_train.txt")
train_label <- read.table("./UCI HAR Dataset/train/y_train.txt")
train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
train_data2 <- data.frame(Subject = train_subject$V1,
                          Activity = train_label$V1)
train_data3 <- cbind(train_data2, train_data)

## Load test dataset and merge with activity labels and subject identifier
test_data <- read.table("./UCI HAR Dataset/test/X_test.txt")
test_label <- read.table("./UCI HAR Dataset/test/y_test.txt")
test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test_data2 <- data.frame(Subject = test_subject$V1,
                         Activity = test_label$V1)
test_data3 <- cbind(test_data2, test_data)

## Merge training and test data sets into one data set
mergeddata <- rbind(train_data3, test_data3)
order <- order(mergeddata$Subject, mergeddata$Activity, rownames(mergeddata))
mergeddata <- mergeddata[order,]

## Extract only the measurements on the mean and standard deviation for each 
## measuremen, i.e. variables that contain "mean()"  and "std()"
features <- read.table("./UCI HAR Dataset/features.txt")
extract <- grep("mean\\()|std\\()", as.character(features$V2))
step4data <- mergeddata[, c(1,2,extract+2)]

## Label activities in dataset with descriptive activity names
step4data$Activity <- as.character(step4data$Activity)
step4data$Activity <- sub("1", "Walking", step4data$Activity)
step4data$Activity <- sub("2", "Walking Upstairs", step4data$Activity)
step4data$Activity <- sub("3", "Walking Downstairs", step4data$Activity)
step4data$Activity <- sub("4", "Sitting", step4data$Activity)
step4data$Activity <- sub("5", "Standing", step4data$Activity)
step4data$Activity <- sub("6", "Laying", step4data$Activity)
step4data$Activity <- as.factor(step4data$Activity)

## Label dataset with descriptive variable names 
varnames <- features$V2[extract]
varnames <- sub("\\()", "", varnames)
varnames <- gsub("-", "", varnames)
varnames <- sub("meanX", "XMean", varnames)
varnames <- sub("meanY", "YMean", varnames)
varnames <- sub("meanZ", "ZMean", varnames)
varnames <- sub("stdX", "XStd", varnames)
varnames <- sub("stdY", "YStd", varnames)
varnames <- sub("stdZ", "ZStd", varnames)
varnames <- sub("mean", "Mean", varnames)
varnames <- sub("std", "Std", varnames)
varnames <- sub("BodyBody", "Body", varnames)
colnames(step4data) <- c("Subject", "Activity", varnames)

## Transform dataset to contain the average of each variable for each activity 
## and each subject
step4data$Activity <- unclass(step4data$Activity)
fac <- list(step4data$Activity, step4data$Subject)
summary <- sapply(step4data[,1:ncol(step4data)], tapply, 
                  list(step4data$Activity, step4data$Subject), mean)
tidydata <- data.frame(summary)

## Relabel activities variables (different from above since R reoders labels 
## alphabetically)
tidydata$Activity <- as.character(tidydata$Activity)
tidydata$Activity <- sub("1", "Laying", tidydata$Activity)
tidydata$Activity <- sub("2", "Sitting", tidydata$Activity)
tidydata$Activity <- sub("3", "Standing", tidydata$Activity)
tidydata$Activity <- sub("4", "Walking", tidydata$Activity)
tidydata$Activity <- sub("5", "Walking Downstairs", tidydata$Activity)
tidydata$Activity <- sub("6", "Walking Upstairs", tidydata$Activity)
tidydata$Activity <- as.factor(tidydata$Activity)

## Export fnal dataset to text document
write.table(tidydata ,file="TidyData.txt", row.names = FALSE)
