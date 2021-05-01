Codebook
========

Variables
---------

Data_tidy



Variable                                      | Comments
----------------------------------------------|----------------
subject                                       |  subject identifier of volunteer (1-30)
activity                                      |  name ofactivity subject performed (LAYING,SITTING,STANDING,WALKING,WALKING_DOWNSTAIRS,WALKING_UPSTAIRS)
timeBodyAccelerometer-mean()-X                |  mean of tBodyAcc-mean()-X
timeBodyAccelerometer-mean()-Y                |  mean of tBodyAcc-mean()-Y
timeBodyAccelerometer-mean()-Z                |  mean of tBodyAcc-mean()-Z
timeBodyAccelerometer-std()-X                 |  mean of tBodyAcc-std()-X
timeBodyAccelerometer-std()-Y                 |  mean of tBodyAcc-std()-Y
timeBodyAccelerometer-std()-Z                 |  mean of tBodyAcc-std()-Z
timeGravityAccelerometer-mean()-X             |  mean of tGravityAcc-mean()-X
timeGravityAccelerometer-mean()-Y             |  mean of tGravityAcc-mean()-Y
timeGravityAccelerometer-mean()-Z             |  mean of tGravityAcc-mean()-Z
timeGravityAccelerometer-std()-X              |  mean of tGravityAcc-std()-X
timeGravityAccelerometer-std()-Y              |  mean of tGravityAcc-std()-Y
timeGravityAccelerometer-std()-Z              |  mean of tGravityAcc-std()-Z
timeBodyAccelerometerJerk-mean()-X            |  mean of tBodyAccJerk-mean()-X
timeBodyAccelerometerJerk-mean()-Y            |  mean of tBodyAccJerk-mean()-Y
timeBodyAccelerometerJerk-mean()-Z            |  mean of tBodyAccJerk-mean()-Z
timeBodyAccelerometerJerk-std()-X             |  mean of tBodyAccJerk-std()-X
timeBodyAccelerometerJerk-std()-Y             |  mean of tBodyAccJerk-std()-Y
timeBodyAccelerometerJerk-std()-Z             |  mean of tBodyAccJerk-std()-Z
timeBodyGyroscope-mean()-X                    |  mean of tBodyGyro-mean()-X
timeBodyGyroscope-mean()-Y                    |  mean of tBodyGyro-mean()-Y
timeBodyGyroscope-mean()-Z                    |  mean of tBodyGyro-mean()-Z
timeBodyGyroscope-std()-X                     |  mean of tBodyGyro-std()-X
timeBodyGyroscope-std()-Y                     |  mean of tBodyGyro-std()-Y
timeBodyGyroscope-std()-Z                     |  mean of tBodyGyro-std()-Z
timeBodyGyroscopeJerk-mean()-X                |  mean of tBodyGyroJerk-mean()-X
timeBodyGyroscopeJerk-mean()-Y                |  mean of tBodyGyroJerk-mean()-Y
timeBodyGyroscopeJerk-mean()-Z                |  mean of tBodyGyroJerk-mean()-Z
timeBodyGyroscopeJerk-std()-X                 |  mean of tBodyGyroJerk-std()-X
timeBodyGyroscopeJerk-std()-Y                 |  mean of tBodyGyroJerk-std()-Y
timeBodyGyroscopeJerk-std()-Z                 |  mean of tBodyGyroJerk-std()-Z
timeBodyAccelerometerMagnitude-mean()         |  mean of tBodyAccMag-mean()
timeBodyAccelerometerMagnitude-std()          |  mean of tBodyAccMag-std()
timeGravityAccelerometerMagnitude-mean()      |  mean of tGravityAccMag-mean()
timeGravityAccelerometerMagnitude-std()       |  mean of tGravityAccMag-std()
timeBodyAccelerometerJerkMagnitude-mean()     |  mean of tBodyAccJerkMag-mean()
timeBodyAccelerometerJerkMagnitude-std()      |  mean of tBodyAccJerkMag-std()
timeBodyGyroscopeMagnitude-mean()             |  mean of tBodyGyroMag-mean()
timeBodyGyroscopeMagnitude-std()              |  mean of tBodyGyroMag-std()
timeBodyGyroscopeJerkMagnitude-mean()         |  mean of tBodyGyroJerkMag-mean()
timeBodyGyroscopeJerkMagnitude-std()          |  mean of tBodyGyroJerkMag-std()
frequencyBodyAccelerometer-mean()-X           |  mean of fBodyAcc-mean()-X
frequencyBodyAccelerometer-mean()-Y           |  mean of fBodyAcc-mean()-Y
frequencyBodyAccelerometer-mean()-Z           |  mean of fBodyAcc-mean()-Z
frequencyBodyAccelerometer-std()-X            |  mean of fBodyAcc-std()-X
frequencyBodyAccelerometer-std()-Y            |  mean of fBodyAcc-std()-Y
frequencyBodyAccelerometer-std()-Z            |  mean of fBodyAcc-std()-Z
frequencyBodyAccelerometerJerk-mean()-X       |  mean of fBodyAccJerk-mean()-X
frequencyBodyAccelerometerJerk-mean()-Y       |  mean of fBodyAccJerk-mean()-Y
frequencyBodyAccelerometerJerk-mean()-Z       |  mean of fBodyAccJerk-mean()-Z
frequencyBodyAccelerometerJerk-std()-X        |  mean of fBodyAccJerk-std()-X
frequencyBodyAccelerometerJerk-std()-Y        |  mean of fBodyAccJerk-std()-Y
frequencyBodyAccelerometerJerk-std()-Z        |  mean of fBodyAccJerk-std()-Z
frequencyBodyGyroscope-mean()-X               |  mean of fBodyGyro-mean()-X
frequencyBodyGyroscope-mean()-Y               |  mean of fBodyGyro-mean()-Y
frequencyBodyGyroscope-mean()-Z               |  mean of fBodyGyro-mean()-Z
frequencyBodyGyroscope-std()-X                |  mean of fBodyGyro-std()-X
frequencyBodyGyroscope-std()-X                |  mean of fBodyGyro-std()-Y
frequencyBodyGyroscope-std()-Z                |  mean of fBodyGyro-std()-Z
frequencyBodyAccelerometerMagnitude-mean()    |  mean of fBodyAccMag-mean()
frequencyBodyAccelerometerMagnitude-std()     |  mean of fBodyAccMag-std()
frequencyBodyAccelerometerJerkMagnitude-mean()|  mean of fBodyBodyAccJerkMag-mean()
frequencyBodyAccelerometerJerkMagnitude-std() |  mean of fBodyBodyAccJerkMag-std()
frequencyBodyGyroscopeMagnitude-mean()        |  mean of fBodyBodyGyroMag-mean()
frequencyBodyGyroscopeMagnitude-std()         |  mean of fBodyBodyGyroMag-std()
frequencyBodyGyroscopeJerkMagnitude-mean()    |  mean of fBodyBodyGyroJerkMag-mean()
frequencyBodyGyroscopeJerkMagnitude-std()     |  mean of fBodyBodyGyroJerkMag-std()


Transformations
---------------

0. a) Data was downloaded and unzipped into the working directory.
0. b) Variables were created from the data to facilitate merging.

1. Using rbind and cbind variables from the test and train datasets were merge into a data frame ("Data")

2.Using grep, features matching mean or std were selected and stored in new variables which was then used to update the data frame ("Data").

3. The activity_labels.txt file from the raw data was used to parse descriptive activity names to "Data" (using factor)

4. gsub was used to replace shortened labels with long form variable names in "Data"

5. A tidy data set ("Data_tidy" data frame) was created using aggregate to store the average of each variable for each activity and each subject, then ordered by subject and then activity. "Data_tidy" was then wrote to "tidydata.txt"


Data
----

Copied from readme.txt in original dataset.

> ==================================================================
> Human Activity Recognition Using Smartphones Dataset
> Version 1.0
> ==================================================================
> Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
> Smartlab - Non Linear Complex Systems Laboratory
> DITEN - Università degli Studi di Genova.
> Via Opera Pia 11A, I-16145, Genoa, Italy.
> activityrecognition@smartlab.ws
> www.smartlab.ws
> ==================================================================
> 
> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
> 
> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
> 
> For each record it is provided:
> ======================================
> 
> - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
> - Triaxial Angular velocity from the gyroscope. 
> - A 561-feature vector with time and frequency domain variables. 
> - Its activity label. 
> - An identifier of the subject who carried out the experiment.
> 
> The dataset includes the following files:
> =========================================
> 
> - 'README.txt'
> 
> - 'features_info.txt': Shows information about the variables used on the feature vector.
> 
> - 'features.txt': List of all features.
> 
> - 'activity_labels.txt': Links the class labels with their activity name.
> 
> - 'train/X_train.txt': Training set.
> 
> - 'train/y_train.txt': Training labels.
> 
> - 'test/X_test.txt': Test set.
> 
> - 'test/y_test.txt': Test labels.
> 
> The following files are available for the train and test data. Their descriptions are equivalent. 
> 
> - 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
> 
> - 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
> 
> - 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
> 
> - 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 
> 
> Notes: 
> ======
> - Features are normalized and bounded within [-1,1].
> - Each feature vector is a row on the text file.
> 
> For more information about this dataset contact: activityrecognition@smartlab.ws
> 
> License:
> ========
> Use of this dataset in publications must be acknowledged by referencing the following publication [1] 
> 
> [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
> 
> This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
> 
> Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
> 
