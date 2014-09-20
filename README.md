## Introduction

This assignment for is Getting and Cleaning Data Course of the Data Specialization Track on Corsera. The problem statement and detailed instructions can be found here:  

https://class.coursera.org/getdata-007/human_grading/view/courses/972585/assessments/3/submissions

In particular, this repo contains code and datasets to perform the following:  

1) You should create one R script called run_analysis.R that does the following. 
2) Merges the training and the test sets to create one data set.
3) Extracts only the measurements on the mean and standard deviation for each measurement. 
4) Uses descriptive activity names to name the activities in the data set
5) Appropriately labels the data set with descriptive variable names. 
6) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Data 

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The Data is also saved in the **UCIHARDDataset/** folder, within which there are independent test and train data folders.  

The descriptions of the variables in the dataset are available in **UCIHARDDataset/README.txt**. 


## run_analysis.R

This is the main script that performs all the tasks given in the problem statement. The script can be directly run from the command line using 

source("run_analysis.R")

as long as all the paths of the data sets are preserved.



