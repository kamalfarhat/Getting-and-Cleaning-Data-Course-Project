**How scripts work:**

1- Load X and Y datasets (test and train), features, activity labels and subject dataset (test and train)
2- Use rbind() for to combine the test and train data in one dataset for both X, Y and subject datasets  
3- Use Colnames() to give meaningful variable names for the X dataset using the features dataset  
4- Create a subset of the data using grep() to extract  the measurements on the mean and standard deviation only for each measurement  
5- Add a new column containing descriptive activity names to name the activities in the data set using cbind() with the activty labels and Y datasets  
6- Add a new column containing the subject ids using cbind() with the subjects dataset  
7- create a tidy data set with the average of each variable of the subset for each activity and each subject  