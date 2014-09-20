
This codebook provides detailed information about the variables in the input and output data and tranformations made to obtain them:

##Input Data:
1) **Training data set**: Contained in *UCIHARDataset/train/X_train.txt*
2) **Test Data set**: Contained in *UCIHARDataset/test/X_test.txt*

The training data set contains 7352 observables of 561 variables and the test data set contains 2946 observables of 561 variables.

These two data sets are merged into a single dataset.

3) **features**: Contained in *UCIHARDataset/features.txt*
This file containes 561 features that correspond to each measurement (column) of the test and train data sets. We transform this into the header for the merged dataset.

4) We then extract only the columns with the terms *mean* or *std* in it's header that we obtained from features.txt. This transformed dataset now reduces from 561 columns to  79 columns.

5) **Activity Labels** The activity labels for the test and train datasets are conatined in *UCIHARDataset/test/y_test.txt*, *UCIHARDataset/train/y_train.txt* respectively. The Activity Labels run from 1 through 6 and their descriptions are stored in *UCIHARDataset/activity_labels.txt*. We replace the numbers into these descriptive labels.

6) **Subject Labels**: The subject labels from 1 through 30 are contained in *UCIHARDataset/test/subject_test.txt* and *UCIHARDataset/train/subject_train.txt* respective for the test and train data. 

7) The column bind the subject labels and activity labels to the data obtained from step 4. Now the dataset has 10299 observables of 81 variables.

8) **tidydata,txt**: From the data set in step 7, we creates an independent tidy data set with the average of each variable for each activity and each subject. This new data set containes 180 observables of 81 variables.  The variable names in this dataset are:

 [1] "Activity"                        "Subject"                        
 [3] "tBodyAcc-mean()-X"               "tBodyAcc-mean()-Y"              
 [5] "tBodyAcc-mean()-Z"               "tGravityAcc-mean()-X"           
 [7] "tGravityAcc-mean()-Y"            "tGravityAcc-mean()-Z"           
 [9] "tBodyAccJerk-mean()-X"           "tBodyAccJerk-mean()-Y"          
[11] "tBodyAccJerk-mean()-Z"           "tBodyGyro-mean()-X"             
[13] "tBodyGyro-mean()-Y"              "tBodyGyro-mean()-Z"             
[15] "tBodyGyroJerk-mean()-X"          "tBodyGyroJerk-mean()-Y"         
[17] "tBodyGyroJerk-mean()-Z"          "tBodyAccMag-mean()"             
[19] "tGravityAccMag-mean()"           "tBodyAccJerkMag-mean()"         
[21] "tBodyGyroMag-mean()"             "tBodyGyroJerkMag-mean()"        
[23] "fBodyAcc-mean()-X"               "fBodyAcc-mean()-Y"              
[25] "fBodyAcc-mean()-Z"               "fBodyAcc-meanFreq()-X"          
[27] "fBodyAcc-meanFreq()-Y"           "fBodyAcc-meanFreq()-Z"          
[29] "fBodyAccJerk-mean()-X"           "fBodyAccJerk-mean()-Y"          
[31] "fBodyAccJerk-mean()-Z"           "fBodyAccJerk-meanFreq()-X"      
[33] "fBodyAccJerk-meanFreq()-Y"       "fBodyAccJerk-meanFreq()-Z"      
[35] "fBodyGyro-mean()-X"              "fBodyGyro-mean()-Y"             
[37] "fBodyGyro-mean()-Z"              "fBodyGyro-meanFreq()-X"         
[39] "fBodyGyro-meanFreq()-Y"          "fBodyGyro-meanFreq()-Z"         
[41] "fBodyAccMag-mean()"              "fBodyAccMag-meanFreq()"         
[43] "fBodyBodyAccJerkMag-mean()"      "fBodyBodyAccJerkMag-meanFreq()" 
[45] "fBodyBodyGyroMag-mean()"         "fBodyBodyGyroMag-meanFreq()"    
[47] "fBodyBodyGyroJerkMag-mean()"     "fBodyBodyGyroJerkMag-meanFreq()"
[49] "tBodyAcc-std()-X"                "tBodyAcc-std()-Y"               
[51] "tBodyAcc-std()-Z"                "tGravityAcc-std()-X"            
[53] "tGravityAcc-std()-Y"             "tGravityAcc-std()-Z"            
[55] "tBodyAccJerk-std()-X"            "tBodyAccJerk-std()-Y"           
[57] "tBodyAccJerk-std()-Z"            "tBodyGyro-std()-X"              
[59] "tBodyGyro-std()-Y"               "tBodyGyro-std()-Z"              
[61] "tBodyGyroJerk-std()-X"           "tBodyGyroJerk-std()-Y"          
[63] "tBodyGyroJerk-std()-Z"           "tBodyAccMag-std()"              
[65] "tGravityAccMag-std()"            "tBodyAccJerkMag-std()"          
[67] "tBodyGyroMag-std()"              "tBodyGyroJerkMag-std()"         
[69] "fBodyAcc-std()-X"                "fBodyAcc-std()-Y"               
[71] "fBodyAcc-std()-Z"                "fBodyAccJerk-std()-X"           
[73] "fBodyAccJerk-std()-Y"            "fBodyAccJerk-std()-Z"           
[75] "fBodyGyro-std()-X"               "fBodyGyro-std()-Y"              
[77] "fBodyGyro-std()-Z"               "fBodyAccMag-std()"              
[79] "fBodyBodyAccJerkMag-std()"       "fBodyBodyGyroMag-std()"         
[81] "fBodyBodyGyroJerkMag-std()" 

