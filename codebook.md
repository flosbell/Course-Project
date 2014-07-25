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

All feature variables that did not contain information about mean or standard deviation were removed (their names did not contain substrings 'mean()' or 'std()').

For all subjects and activities was computed average of all remaining feature variables. New "Tidy dataset" was created - it contains one row of data for each pariticipant and each activity along with the information on average for all remaining feature variables.


Descriptions of variables - Tidy dataset
---------------------------
The dataset contains 69 variables - 3 describing the subject activity and dataset and 66 describing the average of each feature variable for each activity and each subject. Please refer to the original dataset [1] for more detailed description of feature variables.

 * Subject
 * Activity
 * Dataset
 * tBodyAcc_mean()_X_avg
 * tBodyAcc_mean()_Y_avg
 * tBodyAcc_mean()_Z_avg
 * tBodyAcc_std()_X_avg
 * tBodyAcc_std()_Y_avg
 * tBodyAcc_std()_Z_avg
 * tGravityAcc_mean()_X_avg
 * tGravityAcc_mean()_Y_avg
 * tGravityAcc_mean()_Z_avg
 * tGravityAcc_std()_X_avg
 * tGravityAcc_std()_Y_avg
 * tGravityAcc_std()_Z_avg
 * tBodyAccJerk_mean()_X_avg
 * tBodyAccJerk_mean()_Y_avg
 * tBodyAccJerk_mean()_Z_avg
 * tBodyAccJerk_std()_X_avg
 * tBodyAccJerk_std()_Y_avg
 * tBodyAccJerk_std()_Z_avg
 * tBodyGyro_mean()_X_avg
 * tBodyGyro_mean()_Y_avg
 * tBodyGyro_mean()_Z_avg
 * tBodyGyro_std()_X_avg
 * tBodyGyro_std()_Y_avg
 * tBodyGyro_std()_Z_avg
 * tBodyGyroJerk_mean()_X_avg
 * tBodyGyroJerk_mean()_Y_avg
 * tBodyGyroJerk_mean()_Z_avg
 * tBodyGyroJerk_std()_X_avg
 * tBodyGyroJerk_std()_Y_avg
 * tBodyGyroJerk_std()_Z_avg
 * tBodyAccMag_mean()_avg
 * tBodyAccMag_std()_avg
 * tGravityAccMag_mean()_avg
 * tGravityAccMag_std()_avg
 * tBodyAccJerkMag_mean()_avg
 * tBodyAccJerkMag_std()_avg
 * tBodyGyroMag_mean()_avg
 * tBodyGyroMag_std()_avg
 * tBodyGyroJerkMag_mean()_avg
 * tBodyGyroJerkMag_std()_avg
 * fBodyAcc_mean()_X_avg
 * fBodyAcc_mean()_Y_avg
 * fBodyAcc_mean()_Z_avg
 * fBodyAcc_std()_X_avg
 * fBodyAcc_std()_Y_avg
 * fBodyAcc_std()_Z_avg
 * fBodyAccJerk_mean()_X_avg
 * fBodyAccJerk_mean()_Y_avg
 * fBodyAccJerk_mean()_Z_avg
 * fBodyAccJerk_std()_X_avg
 * fBodyAccJerk_std()_Y_avg
 * fBodyAccJerk_std()_Z_avg
 * fBodyGyro_mean()_X_avg
 * fBodyGyro_mean()_Y_avg
 * fBodyGyro_mean()_Z_avg
 * fBodyGyro_std()_X_avg
 * fBodyGyro_std()_Y_avg
 * fBodyGyro_std()_Z_avg
 * fBodyAccMag_mean()_avg
 * fBodyAccMag_std()_avg
 * fBodyBodyAccJerkMag_mean()_avg
 * fBodyBodyAccJerkMag_std()_avg
 * fBodyBodyGyroMag_mean()_avg
 * fBodyBodyGyroMag_std()_avg
 * fBodyBodyGyroJerkMag_mean()_avg
 * fBodyBodyGyroJerkMag_std()_avg

References
--------------------
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

[2] Wickham, Hadley. "Tidy data." Under review (2014).