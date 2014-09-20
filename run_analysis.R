#This script implements the following tasks
#(1)Merges the training and the test sets to create one data set.
#(2)Extracts only the measurements on the mean and standard deviation for each measurement. 
#(3)Uses descriptive activity names to name the activities in the data set
#(4)Appropriately labels the data set with descriptive variable names. 
#(5)From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#Getting the data & merge them into a single dataset
test <- read.table("UCIHARDataset/test/X_test.txt")
train <- read.table("UCIHARDataset/train/X_train.txt")
features <- read.table("UCIHARDataset/features.txt")
merged <- rbind(train, test)
names(merged) <- features[[2]]

#Now we have a dataframe with the appropriate headings. Not it should be easy to extract only the measurements on mean and std dev.
meandata <- merged[,grep("mean", names(merged))]
stddata <- merged[,grep("std", names(merged))]
newdata <- cbind(meandata, stddata)

#Let's get the labels of the activities
testlabel <- read.table("UCIHARDataset/test/y_test.txt")
trainlabel <- read.table("UCIHARDataset/train/y_train.txt")
mergedlabel <- rbind(trainlabel, testlabel) 

#Let's right away rename the appropriate activities!
Activity <- c("Walking", "Climbing Up", "Climbing Down", "Sitting", "Standing", "Laying")
for (i in 1:length(Activity)) {
  mergedlabel[mergedlabel == i] <- Activity[i]
}
names(mergedlabel) <- "Activity"

# And now lets get the subjects
testsubj <- read.table("UCIHARDataset/test/subject_test.txt")
trainsubj <- read.table("UCIHARDataset/train/subject_train.txt")
mergedsubj <- rbind(trainsubj, testsubj)
names(mergedsubj) <- "Subject"

#Now we have the full data set with appropriate activity names and the subject labels.
newdata <- cbind(newdata, mergedlabel, mergedsubj)

#The final step, lets create a tidy dataset with only the average values for each activity for each user.
tidydata <- aggregate(. ~ Activity+Subject, data=newdata, mean)
write.table(tidydata, file="tidydata.txt", row.name=FALSE)
