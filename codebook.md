CODEBOOK - Course project - Getting and Cleaning Data, Summer 2014
==================================================================

About Tidy dataset
-------------------
"Tidy dataset" was created by processing data from "Human Activity Recognition Using Smartphones Dataset" [1] available at https://396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. The "Tidy dataset" should conform to rules of tidy data [2].

The script run_analysis.R produces file 'tidy.txt' that contains Tidy dataset.

Process of creation of Tidy dataset
------------------------------------
Please refer to README.txt available along with the original dataset for the description of original data.

For both datasets, the information about subject, activity and features was merged into one dataset and new variable containing information about dataset was created. Subsequently datasets 'train' and 'test' were merged into one large dataset.

Variable Labels available in file 'features.txt' were loaded into the dataset as variable names for features. The variable describing activity was recoded to contain text descriptions instead of numbers.

All feature variables that did not contain information about mean or standard deviation were removed (their names did not contain substrings 'mean()' or 'std()'). Then mean of all

For all subjects and activities was computed mean of all remaining feature variables. New "Tidy dataset" was created - it contains one row of data for each pariticipant and each activity along with the information on mean for all remaining feature variables.


Descriptions of variables - Tidy dataset
---------------------------
The dataset contains 69 variables - 3 describing the observation and 66 describing means of the features. Please refer to the original dataset [1] for more detailed description of feature variables.

 Observation details:
 * Subject - numbers 1 to 30
 * Activity - 6 different activities
 * Dataset - denotes from which datasets comes the observation
 
 Feature variables:
 * tBodyAcc-mean()-X
 * tBodyAcc-mean()-Y
 * tBodyAcc-mean()-Z
 * tBodyAcc-std()-X
 * tBodyAcc-std()-Y
 * tBodyAcc-std()-Z
 * tGravityAcc-mean()-X
 * tGravityAcc-mean()-Y
 * tGravityAcc-mean()-Z
 * tGravityAcc-std()-X
 * tGravityAcc-std()-Y
 * tGravityAcc-std()-Z
 * tBodyAccJerk-mean()-X
 * tBodyAccJerk-mean()-Y
 * tBodyAccJerk-mean()-Z
 * tBodyAccJerk-std()-X
 * tBodyAccJerk-std()-Y
 * tBodyAccJerk-std()-Z
 * tBodyGyro-mean()-X
 * tBodyGyro-mean()-Y
 * tBodyGyro-mean()-Z
 * tBodyGyro-std()-X
 * tBodyGyro-std()-Y
 * tBodyGyro-std()-Z
 * tBodyGyroJerk-mean()-X
 * tBodyGyroJerk-mean()-Y
 * tBodyGyroJerk-mean()-Z
 * tBodyGyroJerk-std()-X
 * tBodyGyroJerk-std()-Y
 * tBodyGyroJerk-std()-Z
 * tBodyAccMag-mean()
 * tBodyAccMag-std()
 * tGravityAccMag-mean()
 * tGravityAccMag-std()
 * tBodyAccJerkMag-mean()
 * tBodyAccJerkMag-std()
 * tBodyGyroMag-mean()
 * tBodyGyroMag-std()
 * tBodyGyroJerkMag-mean()
 * tBodyGyroJerkMag-std()
 * fBodyAcc-mean()-X
 * fBodyAcc-mean()-Y
 * fBodyAcc-mean()-Z
 * fBodyAcc-std()-X
 * fBodyAcc-std()-Y
 * fBodyAcc-std()-Z
 * fBodyAccJerk-mean()-X
 * fBodyAccJerk-mean()-Y
 * fBodyAccJerk-mean()-Z
 * fBodyAccJerk-std()-X
 * fBodyAccJerk-std()-Y
 * fBodyAccJerk-std()-Z
 * fBodyGyro-mean()-X
 * fBodyGyro-mean()-Y
 * fBodyGyro-mean()-Z
 * fBodyGyro-std()-X
 * fBodyGyro-std()-Y
 * fBodyGyro-std()-Z
 * fBodyAccMag-mean()
 * fBodyAccMag-std()
 * fBodyBodyAccJerkMag-mean()
 * fBodyBodyAccJerkMag-std()
 * fBodyBodyGyroMag-mean()
 * fBodyBodyGyroMag-std()
 * fBodyBodyGyroJerkMag-mean()
 * fBodyBodyGyroJerkMag-std()

References
--------------------
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

[2] Wickham, Hadley. "Tidy data." Under review (2014).