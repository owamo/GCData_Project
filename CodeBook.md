Tidy Dataset based on Human Activity Recognition Using Smartphones Dataset
========================================================

STUDY DESIGN
-------------------------

The original dataset<sup>1</sup> is based on experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (walking, walking upstairs, walking downstairs, sitting, standing, and laying) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, Anguita *et al.* captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See '*features_info.txt*' in the UCI HAR Dataset folder for more details. 

For each record in the original dataset, it is provided:
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

A total of 66 features were selected for the **tidy dataset** ('*TidyData.txt*'); these were measurements on the **mean** and **standard deviation** for each measurement. The variables were transformed by averaging across all records within each individual and activity performed. So each record in the transformed dataset represents the average mean or average standard deviation of each measurement for the given activity performed by a specific volunteer. For more details on the specific features in this dataset, please see the **CODE BOOK** section.


CODE BOOK
========================================================

### Subject and activity variables
Variable Name            | Description
------------------------ | -----------------------------------------------------------------------------------
`Subject`                | Unique volunteer identifier which takes values 1 to 30
`Activity`               | Activity performed by the volunteer:  1. Laying  2. Sitting  3. Standing  4. Walking  5. Walking Downstairs  6. Walking Upstairs

 
### Time domain acceleration (body and gravity) and gyroscope signal variables
The features in the original database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals (prefix '`t`' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. Signals were normalized and bounded within [-1,1] in the original dataset.

Variable Name            | Description
------------------------ | -----------------------------------------------------------------------------------
`tBodyAccXMean`          | Average of the *mean* *body acceleration* signals along the *X*-axis (*time* domain) 
`tBodyAccYMean`          | Average of the *mean* *body acceleration* signals along the *Y*-axis (*time* domain) 
`tBodyAccZMean`          | Average of the *mean* *body acceleration* signals along the *Z*-axis (*time* domain)
`tBodyAccXStd`           | Average *standard deviation* of *body acceleration* signals along the *X*-axis (*time* domain)
`tBodyAccYStd`           | Average *standard deviation* of *body acceleration* signals along the *Y*-axis (*time* domain)
`tBodyAccZStd`           | Average *standard deviation* of *body acceleration* signals along the *Z*-axis (*time* domain)
`tGravityAccXMean`       | Average of the *mean* *gravity acceleration* signals along the *X*-axis (*time* domain)
`tGravityAccYMean`       | Average of the *mean* *gravity acceleration* signals along the *Y*-axis (*time* domain)
`tGravityAccZMean`       | Average of the *mean* *gravity acceleration* signals along the *Z*-axis (*time* domain)
`tGravityAccXStd`        | Average *standard deviation* of *gravity acceleration* signals along the *X*-axis (*time* domain)
`tGravityAccYStd`        | Average *standard deviation* of *gravity acceleration* signals along the *Y*-axis (*time* domain)
`tGravityAccZStd`        | Average *standard deviation* of *gravity acceleration* signals along the *Z*-axis (*time* domain)
`tBodyGyroXMean`         | Average of the *mean* *body gyroscope* signals along the *X*-axis (*time* domain)
`tBodyGyroYMean`         | Average of the *mean* *body gyroscope* signals along the *Y*-axis (*time* domain)
`tBodyGyroZMean`         | Average of the *mean* *body gyroscope* signals along the *Z*-axis (*time* domain)
`tBodyGyroXStd`          | Average *standard deviation* of *body gyroscope* signals along the *X*-axis (*time* domain)
`tBodyGyroYStd`          | Average *standard deviation* of *body gyroscope* signals along the *Y*-axis (*time* domain)
`tBodyGyroZStd`          | Average *standard deviation* of *body gyroscope* signals along the *X*-axis (*time* domain)

### Time domain acceleration and gyroscope Jerk signal variables
Signals of body linear acceleration (from the accelerometer) and angular velocity (from the gyroscope) were derived in time to obtain Jerk signals. These signals were normalized and bounded within [-1,1] in the original dataset.

Variable Name            | Description
------------------------ | -----------------------------------------------------------------------------------
`tBodyAccJerkXMean`      | Average of the *mean* *Jerk* signals derived from *body acceleration* signals along the *X*-axis (*time* domain)
`tBodyAccJerkYMean`      | Average of the *mean* *Jerk* signals derived from *body acceleration* signals along the *Y*-axis (*time* domain)
`tBodyAccJerkZMean`      | Average of the *mean* *Jerk* signals derived from *body acceleration* signals along the *Z*-axis (*time* domain)
`tBodyAccJerkXStd`       | Average *standard deviation* of *Jerk* signals derived from *body acceleration* signals along the *X*-axis (*time* domain)
`tBodyAccJerkYStd`       | Average *standard deviation* of *Jerk* signals derived from *body acceleration* signals along the *Y*-axis (*time* domain)
`tBodyAccJerkZStd`       | Average *standard deviation* of *Jerk* signals derived from *body acceleration* signals along the *Z*-axis (*time* domain)
`tBodyGyroJerkXMean`     | Average of the *mean* *Jerk* signals derived from *body gyroscope* signals along the *X*-axis (*time* domain)
`tBodyGyroJerkYMean`     | Average of the *mean* *Jerk* signals derived from *body gyroscope* signals along the *Y*-axis (*time* domain)
`tBodyGyroJerkZMean`     | Average of the *mean* *Jerk* signals derived from *body gyroscope* signals along the *Z*-axis (*time* domain)
`tBodyGyroJerkXStd`      | Average *standard deviation* of *Jerk* signals derived from *body gyroscope* signals along the *X*-axis (*time* domain)
`tBodyGyroJerkYStd`      | Average *standard deviation* of *Jerk* signals derived from *body gyroscope* signals along the *Y*-axis (*time* domain)
`tBodyGyroJerkZStd`      | Average *standard deviation* of *Jerk* signals derived from *body gyroscope* signals along the *Z*-axis (*time* domain)

### Magnitude variables of time domain signals
The magnitude of these three-dimensional signals were calculated using the Euclidean norm. The values were normalized and bounded within [-1,1] in the original dataset.

Variable Name            | Description
------------------------ | -----------------------------------------------------------------------------------
`tBodyAccMagMean`        | Average of the *mean* *magnitude* of *body acceleration* signals (*time* domain) 
`tBodyAccMagStd`         | Average *standard deviation* of the *magnitude* of *body acceleration* signals (*time* domain)
`tGravityAccMagMean`     | Average of the *mean* *magnitude* of *gravity acceleration* signals (*time* domain)
`tGravityAccMagStd`      | Average *standard deviation* of the *magnitude* of *gravity acceleration* signals (*time* domain)
`tBodyAccJerkMagMean`    | Average of the *mean* *magnitude* of *Jerk* signals derived from *body acceleration* signals (*time* domain)
`tBodyAccJerkMagStd`     | Average *standard deviation* of the *magnitude* of *Jerk* signals derived from *body acceleration* signals (*time* domain)
`tBodyGyroMagMean`       | Average of the *mean* *magnitude* of *body gyroscope* signals (*time* domain)
`tBodyGyroMagStd`        | Average *standard deviation* of the *magnitude* of *body gyroscope* signals (*time* domain)
`tBodyGyroJerkMagMean`   | Average of the *mean* *magnitude* of *Jerk* signals derived from *body gyroscope* signals (*time* domain)
`tBodyGyroJerkMagStd`    | Average *standard deviation* of the *magnitude* of *Jerk* signals derived from *body gyroscope* signals (*time* domain)

### Transformed frequency domain signal and magnitude variables
A Fast Fourier Transform (FFT) was applied to some of signals (prefix '`f`' to indicate frequency domain signals). The values were normalized and bounded within [-1,1] in the original dataset.

Variable Name            | Description
------------------------ | -----------------------------------------------------------------------------------
`fBodyAccXMean`          | Average of the *mean* *body acceleration* signals along the *X*-axis (*frequency* domain)
`fBodyAccYMean`          | Average of the *mean* *body acceleration* signals along the *Y*-axis (*frequency* domain)
`fBodyAccZMean`          | Average of the *mean* *body acceleration* signals along the *Z*-axis (*frequency* domain)
`fBodyAccXStd`           | Average *standard deviation* of *body acceleration* signals along the *X*-axis (*frequency* domain)
`fBodyAccYStd`           | Average *standard deviation* of *body acceleration* signals along the *Y*-axis (*frequency* domain)
`fBodyAccZStd`           | Average *standard deviation* of *body acceleration* signals along the *Z*-axis (*frequency* domain)
`fBodyAccJerkXMean`      | Average of the *mean* *Jerk* signals derived from *body acceleration* signals along the *X*-axis (*frequency* domain)
`fBodyAccJerkYMean`      | Average of the *mean* *Jerk* signals derived from *body acceleration* signals along the *Y*-axis (*frequency* domain)
`fBodyAccJerkZMean`      | Average of the *mean* *Jerk* signals derived from *body acceleration* signals along the *Z*-axis (*frequency* domain)
`fBodyAccJerkXStd`       | Average *standard deviation* of *Jerk* signals derived from *body acceleration* signals along the *X*-axis (*frequency* domain)
`fBodyAccJerkYStd`       | Average *standard deviation* of *Jerk* signals derived from *body acceleration* signals along the *Y*-axis (*frequency* domain)
`fBodyAccJerkZStd`       | Average *standard deviation* of *Jerk* signals derived from *body acceleration* signals along the *Y*-axis (*frequency* domain)
`fBodyGyroXMean`         | Average of the *mean* *body gyroscope* signals along the *X*-axis (*frequency* domain)
`fBodyGyroYMean`         | Average of the *mean* *body gyroscope* signals along the *Y*-axis (*frequency* domain)
`fBodyGyroZMean`         | Average of the *mean* *body gyroscope* signals along the *Z*-axis (*frequency* domain)
`fBodyGyroXStd`          | Average *standard deviation* of *body gyroscope* signals along the *X*-axis (*frequency* domain)
`fBodyGyroYStd`          | Average *standard deviation* of *body gyroscope* signals along the *Y*-axis (*frequency* domain)
`fBodyGyroZStd`          | Average *standard deviation* of *body gyroscope* signals along the *Z*-axis (*frequency* domain)
`fBodyAccMagMean`        | Average of the *mean* *magnitude* of *body acceleration* signals (*frequency* domain)
`fBodyAccMagStd`         | Average *standard deviation* of the *magnitude* of *body acceleration* signals (*frequency* domain)
`fBodyAccJerkMagMean`    | Average of the *mean* *magnitude* of *Jerk* signals derived from *body acceleration* signals (*frequency* domain)
`fBodyAccJerkMagStd`     | Average *standard deviation* of the *magnitude* of *Jerk* signals derived from *body acceleration* signals (*frequency* domain)
`fBodyGyroMagMean`       | Average of the *mean* *magnitude* of *body gyroscope* signals (*frequency* domain)
`fBodyGyroMagStd`        | Average *standard deviation* of the *magnitude* of *body gyroscope* signals (*frequency* domain)
`fBodyGyroJerkMagMean`   | Average of the *mean* *magnitude* of *Jerk* signals derived from *body gyroscope* signals (*frequency* domain)
`fBodyGyroJerkMagStd`    | Average *standard deviation* of the *magnitude* of *Jerk* signals derived from *body gyroscope* signals (*frequency* domain)


-------------------

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

