**Data Cleanup steps:**

1- Use rbind() to combine the test and train data in one dataset for X, Y and subject datasets 
2- Use Colnames() to give meaningful variable names for the X dataset using the features dataset  
3- Create a subset of the data using grep() to extract  the measurements on the mean and standard deviation only for each measurement  
4- Add a new column containing descriptive activity names to name the activities in the data set using cbind() with the activty labels and Y datasets  
5- Add a new column containing the subject ids using cbind() with the subjects dataset  
6- create a tidy data set with the average of each variable of the subset for each activity and each subject  

**Variables**    

**The group by factor variables:**    
"activity_name"  
"subject_id"                      
 
**33 variables for mean measurements:**
 
"tBodyAcc-mean()-X"              
"tBodyAcc-mean()-Y"  
"tBodyAcc-mean()-Z"               
"tGravityAcc-mean()-X"           
"tGravityAcc-mean()-Y"            
"tGravityAcc-mean()-Z"            
"tBodyAccJerk-mean()-X"          
"tBodyAccJerk-mean()-Y"           
"tBodyAccJerk-mean()-Z"           
"tBodyGyro-mean()-X"             
"tBodyGyro-mean()-Y"              
"tBodyGyro-mean()-Z"              
"tBodyGyroJerk-mean()-X"         
"tBodyGyroJerk-mean()-Y"          
"tBodyGyroJerk-mean()-Z"          
"tBodyAccMag-mean()"             
"tGravityAccMag-mean()"           
"tBodyAccJerkMag-mean()"          
"tBodyGyroMag-mean()"            
"tBodyGyroJerkMag-mean()"         
"fBodyAcc-mean()-X"               
"fBodyAcc-mean()-Y"              
"fBodyAcc-mean()-Z"               
"fBodyAccJerk-mean()-X"           
"fBodyAccJerk-mean()-Y"          
"fBodyAccJerk-mean()-Z"           
"fBodyGyro-mean()-X"              
"fBodyGyro-mean()-Y"             
"fBodyGyro-mean()-Z"              
"fBodyAccMag-mean()"              
"fBodyBodyAccJerkMag-mean()"      
"fBodyBodyGyroMag-mean()"        
"fBodyBodyGyroJerkMag-mean()"     

**33 variables for standard deviation measurements:**

"tBodyAcc-std()-X"                
"tBodyAcc-std()-Y"                
"tBodyAcc-std()-Z"               
"tGravityAcc-std()-X"             
"tGravityAcc-std()-Y"             
"tGravityAcc-std()-Z"            
"tBodyAccJerk-std()-X"            
"tBodyAccJerk-std()-Y"            
"tBodyAccJerk-std()-Z"           
"tBodyGyro-std()-X"               
"tBodyGyro-std()-Y"               
"tBodyGyro-std()-Z"              
"tBodyGyroJerk-std()-X"           
"tBodyGyroJerk-std()-Y"           
"tBodyGyroJerk-std()-Z"          
"tBodyAccMag-std()"               
"tGravityAccMag-std()"            
"tBodyAccJerkMag-std()"          
"tBodyGyroMag-std()"              
"tBodyGyroJerkMag-std()"          
"fBodyAcc-std()-X"               
"fBodyAcc-std()-Y"                
"fBodyAcc-std()-Z"                
"fBodyAccJerk-std()-X"           
"fBodyAccJerk-std()-Y"            
"fBodyAccJerk-std()-Z"            
"fBodyGyro-std()-X"              
"fBodyGyro-std()-Y"               
"fBodyGyro-std()-Z"               
"fBodyAccMag-std()"              
"fBodyBodyAccJerkMag-std()"       
"fBodyBodyGyroMag-std()"          
"fBodyBodyGyroJerkMag-std()"     