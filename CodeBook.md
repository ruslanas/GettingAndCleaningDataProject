Code Book
======================================================================

Signals were taken from accelerometer and gyroscope on the waist of test subject while
performing various activities.

Below you can see a list of all the features in the table produced by script.

Features represent average values of all corresponding mean or standard deviation
values calculated in previous experiment [1] for each time window (128 readings/window)
of length 2.56 seconds grouped by test subject and activity.

Prefix _'t'_ denotes measurements taken in time domain, _'f'_ - in frequency domain.
_'Acc'_ denotes measurements from accelerometer, _'Gyro'_ - measurements from gyroscope.
In original experiment measurements were taken at a constant rate of 50 Hz, filtered and
separated into body and gravity acceleration components denoted by _'Body'_ and _'Gravity'_
accordingly.

_'Jerk'_ signals were derived and magnitude (denoted by 'Mag') were calculated. _'X'_, _'Y'_ and _'Z'_
denotes measurement on each axis separately.

_mean()_ Mean value

_std()_ Standard deviation

Features are normalized and bounded within [-1,1].

**Subject** - test subject [1-30]

**Activity** - activity (LAYING, WALKING, STANDING, SITTING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)

**AID** - activity ID [1-6]



**tBodyAcc-mean()-X**

**tBodyAcc-mean()-Y**

**tBodyAcc-mean()-Z**

**tBodyAcc-std()-X**

**tBodyAcc-std()-Y**

**tBodyAcc-std()-Z**

**tGravityAcc-mean()-X**

**tGravityAcc-mean()-Y**

**tGravityAcc-mean()-Z**

**tGravityAcc-std()-X**

**tGravityAcc-std()-Y**

**tGravityAcc-std()-Z**

**tBodyAccJerk-mean()-X**

**tBodyAccJerk-mean()-Y**

**tBodyAccJerk-mean()-Z**

**tBodyAccJerk-std()-X**

**tBodyAccJerk-std()-Y**

**tBodyAccJerk-std()-Z**

**tBodyGyro-mean()-X**

**tBodyGyro-mean()-Y**

**tBodyGyro-mean()-Z**

**tBodyGyro-std()-X**

**tBodyGyro-std()-Y**

**tBodyGyro-std()-Z**

**tBodyGyroJerk-mean()-X**

**tBodyGyroJerk-mean()-Y**

**tBodyGyroJerk-mean()-Z**

**tBodyGyroJerk-std()-X**

**tBodyGyroJerk-std()-Y**

**tBodyGyroJerk-std()-Z**

**tBodyAccMag-mean()**

**tBodyAccMag-std()**

**tGravityAccMag-mean()**

**tGravityAccMag-std()**

**tBodyAccJerkMag-mean()**

**tBodyAccJerkMag-std()**

**tBodyGyroMag-mean()**

**tBodyGyroMag-std()**

**tBodyGyroJerkMag-mean()**

**tBodyGyroJerkMag-std()**

**fBodyAcc-mean()-X**

**fBodyAcc-mean()-Y**

**fBodyAcc-mean()-Z**

**fBodyAcc-std()-X**

**fBodyAcc-std()-Y**

**fBodyAcc-std()-Z**

**fBodyAcc-meanFreq()-X**

**fBodyAcc-meanFreq()-Y**

**fBodyAcc-meanFreq()-Z**

**fBodyAccJerk-mean()-X**

**fBodyAccJerk-mean()-Y**

**fBodyAccJerk-mean()-Z**

**fBodyAccJerk-std()-X**

**fBodyAccJerk-std()-Y**

**fBodyAccJerk-std()-Z**

**fBodyAccJerk-meanFreq()-X**

**fBodyAccJerk-meanFreq()-Y**

**fBodyAccJerk-meanFreq()-Z**

**fBodyGyro-mean()-X**

**fBodyGyro-mean()-Y**

**fBodyGyro-mean()-Z**

**fBodyGyro-std()-X**

**fBodyGyro-std()-Y**

**fBodyGyro-std()-Z**

**fBodyGyro-meanFreq()-X**

**fBodyGyro-meanFreq()-Y**

**fBodyGyro-meanFreq()-Z**

**fBodyAccMag-mean()**

**fBodyAccMag-std()**

**fBodyAccMag-meanFreq()**

**fBodyBodyAccJerkMag-mean()**

**fBodyBodyAccJerkMag-std()**

**fBodyBodyAccJerkMag-meanFreq()**

**fBodyBodyGyroMag-mean()**

**fBodyBodyGyroMag-std()**

**fBodyBodyGyroMag-meanFreq()**

**fBodyBodyGyroJerkMag-mean()**

**fBodyBodyGyroJerkMag-std()**

**fBodyBodyGyroJerkMag-meanFreq()**

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

