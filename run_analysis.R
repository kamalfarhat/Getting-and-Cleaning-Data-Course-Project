library(dplyr)

## load data
features <- read.csv("./UCI HAR Dataset/features.txt", header = FALSE, sep = "")
activity_labels <- read.csv("./UCI HAR Dataset/activity_labels.txt", header = FALSE, sep = "")
train_subjects <- read.csv("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
test_subjects <- read.csv("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)

x_test <- read.csv("./UCI HAR Dataset/test/X_test.txt", header = FALSE, sep = "")
y_test <- read.csv("./UCI HAR Dataset/test/y_test.txt", header = FALSE)

x_train <- read.csv("./UCI HAR Dataset/train/X_train.txt", header = FALSE, sep = "")
y_train <- read.csv("./UCI HAR Dataset/train/y_train.txt", header = FALSE)

## Merge the training and the test sets to create one data set
x_all <- rbind(x_test, x_train)
y_all <- rbind(y_test, y_train)


## Appropriately label the data set with descriptive variable names. 
colnames(x_all) <- features$V2

## Extract only the measurements on the mean and standard deviation for each measurement
means <- grep("mean()", colnames(x_all))
stds <- grep("std()", colnames(x_all))
means_and_stds <- c(means, stds)
x_subset <- x_all[,means_and_stds]

## Use descriptive activity names to name the activities in the data set
y_all$activity <- activity_labels$V2[y_all$V1]
x_subset <- cbind(x_subset, activity_name = y_all$activity)

## create an independent tidy data set with the average of each variable for each activity and each subject
all_subjects <- rbind(test_subjects, train_subjects)
x_subset <- cbind(x_subset, subject_id = all_subjects$V1)
x_subset$subject_id = as.factor(x_subset$subject_id)

activity_subject_group <- x_subset %>% group_by(activity_name, subject_id) %>% summarise_each(funs(sum))
write.table(activity_subject_group, "./UCI HAR Dataset/activity_subject_group.txt", row.name=FALSE)

