CodeBook.md
========================================================
This code book describes the data used in this assignment, the variables, the analyses applied to the data, as well information regarding the resulting tidy dataset.

Data Used
========================================================
The following tidy data analysis was use on data from the **Human Activity Recognition Using Smartphones Dataset, Version 1.0**, which can be accessed here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The data in the "Inertial Signals" folders were not directly utilized for this assignment.

Variables
========================================================
There were **30 subjects**, each of which performed **six activities (WALKING, WALKING_UPDSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)**.  Subjects wore a smartphone (Samsung Galaxy S II) on their waist which produced **561 measurements**.  Per the data description of the UCI HAR dataset, 

"the features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
 
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

-tBodyAcc-XYZ
-tGravityAcc-XYZ
-tBodyAccJerk-XYZ
-tBodyGyro-XYZ
-tBodyGyroJerk-XYZ
-tBodyAccMag
-tGravityAccMag
-tBodyAccJerkMag
-tBodyGyroMag
-tBodyGyroJerkMag
-fBodyAcc-XYZ
-fBodyAccJerk-XYZ
-fBodyGyro-XYZ
-fBodyAccMag
-fBodyAccJerkMag
-fBodyGyroMag
-fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

-mean(): Mean value
-std(): Standard deviation
-mad(): Median absolute deviation 
-max(): Largest value in array
-min(): Smallest value in array
-sma(): Signal magnitude area
-energy(): Energy measure. Sum of the squares divided by the number of values. 
-iqr(): Interquartile range 
-entropy(): Signal entropy
-arCoeff(): Autorregresion coefficients with Burg order equal to 4
-correlation(): correlation coefficient between two signals
-maxInds(): index of the frequency component with largest magnitude
-meanFreq(): Weighted average of the frequency components to obtain a mean frequency
-skewness(): skewness of the frequency domain signal 
-kurtosis(): kurtosis of the frequency domain signal 
-bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
-angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

-gravityMean
-tBodyAccMean
-tBodyAccJerkMean
-tBodyGyroMean
-tBodyGyroJerkMean"



The resulting tidy dataset included **88** of the original measurement variables that represented only those that included std or mean.

The following are the varibale names included in the resulting tidy dataset, tidyGalaxy.txt:
```{r}
> names(tidyGalaxy)
 [1] "activity"                          
 [2] "subject"                           
 [3] "tBodyAccMeanX"                     
 [4] "tBodyAccMeanY"                     
 [5] "tBodyAccMeanZ"                     
 [6] "tBodyAccStdX"                      
 [7] "tBodyAccStdY"                      
 [8] "tBodyAccStdZ"                      
 [9] "tGravityAccMeanX"                  
[10] "tGravityAccMeanY"                  
[11] "tGravityAccMeanZ"                  
[12] "tGravityAccStdX"                   
[13] "tGravityAccStdY"                   
[14] "tGravityAccStdZ"                   
[15] "tBodyAccJerkMeanX"                 
[16] "tBodyAccJerkMeanY"                 
[17] "tBodyAccJerkMeanZ"                 
[18] "tBodyAccJerkStdX"                  
[19] "tBodyAccJerkStdY"                  
[20] "tBodyAccJerkStdZ"                  
[21] "tBodyGyroMeanX"                    
[22] "tBodyGyroMeanY"                    
[23] "tBodyGyroMeanZ"                    
[24] "tBodyGyroStdX"                     
[25] "tBodyGyroStdY"                     
[26] "tBodyGyroStdZ"                     
[27] "tBodyGyroJerkMeanX"                
[28] "tBodyGyroJerkMeanY"                
[29] "tBodyGyroJerkMeanZ"                
[30] "tBodyGyroJerkStdX"                 
[31] "tBodyGyroJerkStdY"                 
[32] "tBodyGyroJerkStdZ"                 
[33] "tBodyAccMagMean"                   
[34] "tBodyAccMagStd"                    
[35] "tGravityAccMagMean"                
[36] "tGravityAccMagStd"                 
[37] "tBodyAccJerkMagMean"               
[38] "tBodyAccJerkMagStd"                
[39] "tBodyGyroMagMean"                  
[40] "tBodyGyroMagStd"                   
[41] "tBodyGyroJerkMagMean"              
[42] "tBodyGyroJerkMagStd"               
[43] "fBodyAccMeanX"                     
[44] "fBodyAccMeanY"                     
[45] "fBodyAccMeanZ"                     
[46] "fBodyAccStdX"                      
[47] "fBodyAccStdY"                      
[48] "fBodyAccStdZ"                      
[49] "fBodyAccMeanFreqX"                 
[50] "fBodyAccMeanFreqY"                 
[51] "fBodyAccMeanFreqZ"                 
[52] "fBodyAccJerkMeanX"                 
[53] "fBodyAccJerkMeanY"                 
[54] "fBodyAccJerkMeanZ"                 
[55] "fBodyAccJerkStdX"                  
[56] "fBodyAccJerkStdY"                  
[57] "fBodyAccJerkStdZ"                  
[58] "fBodyAccJerkMeanFreqX"             
[59] "fBodyAccJerkMeanFreqY"             
[60] "fBodyAccJerkMeanFreqZ"             
[61] "fBodyGyroMeanX"                    
[62] "fBodyGyroMeanY"                    
[63] "fBodyGyroMeanZ"                    
[64] "fBodyGyroStdX"                     
[65] "fBodyGyroStdY"                     
[66] "fBodyGyroStdZ"                     
[67] "fBodyGyroMeanFreqX"                
[68] "fBodyGyroMeanFreqY"                
[69] "fBodyGyroMeanFreqZ"                
[70] "fBodyAccMagMean"                   
[71] "fBodyAccMagStd"                    
[72] "fBodyAccMagMeanFreq"               
[73] "fBodyBodyAccJerkMagMean"           
[74] "fBodyBodyAccJerkMagStd"            
[75] "fBodyBodyAccJerkMagMeanFreq"       
[76] "fBodyBodyGyroMagMean"              
[77] "fBodyBodyGyroMagStd"               
[78] "fBodyBodyGyroMagMeanFreq"          
[79] "fBodyBodyGyroJerkMagMean"          
[80] "fBodyBodyGyroJerkMagStd"           
[81] "fBodyBodyGyroJerkMagMeanFreq"      
[82] "angletBodyAccMean,gravity"         
[83] "angletBodyAccJerkMean,gravityMean" 
[84] "angletBodyGyroMean,gravityMean"    
[85] "angletBodyGyroJerkMean,gravityMean"
[86] "angleX,gravityMean"                
[87] "angleY,gravityMean"                
[88] "angleZ,gravityMean" 
```

Transformations
========================================================
y_train and y_test data were read in, rbinded together into one list of all y observations (y_activty), and assigned an appropriate column name ("ActivityID").
```{r}
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

y_activity <- rbind(y_train, y_test)
colnames(y_activity) <- "ActivityID"
```

activity_labels data were read in and assigned column names.
```{r}
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

colnames(activity_labels) <- c("ActivityID", "Activity")
```

subject_train and subject_test data were binded into one list of all observations (subject), then assigned a column name.
```{r}
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

subject <- rbind(subject_train, subject_test)
colnames(subject) <- "Subject"
```

X_train and X_test data were read in and rbinded into one list of all observations (x_features).
```{r}
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")

x_features <- rbind(x_train, x_test)
```
Dataset was appropriately labeled with descriptive variable names by reading in the features data and cleaning-up the feature names.
```{r}
features <- read.table("./UCI HAR Dataset/features.txt")
featureNames <- features[,2]

## Capitalizes all instances of "mean"
featureNames <- gsub("-mean", "Mean", featureNames)
## Capitalizes all instances of "std"
featureNames <- gsub("-std", "Std", featureNames)
## Removes all ()'s and -'s
featureNames <- gsub("[()-]", "", featureNames)
```

The cleaned-up list of featureNames was assigned as the column names for the x_features dataset.
```{r}
colnames(x_features) <- featureNames
```

The training and test datasets were merged to create one dataset (AllGalaxyData) by cbinding the subject, activity, and x_features data frames together.
```{r}
AllGalaxyData <- cbind(subject, y_activity, x_features)
```

Measurements on only the mean and standard deviation were extracted.
```{r}
SubGalaxyData <- AllGalaxyData[,grepl("[Mm]ean|[Ss]td", names(AllGalaxyData))]
```

SubjectNumber and ActivityID columns of the AllGalaxyData datasets were cbinded to the SubGalaxyData dataset (which contained only measurements on mean and std).
```{r}
SubGalaxyData <- cbind(AllGalaxyData[,1:2], SubGalaxyData)
```

Descriptive activity names were used to name the activities in the dataset.
library(plyr)
```{r}
allGalaxy <- join(activity_labels, SubGalaxyData) 

## Removes ActivityID col because it's no longer needed in the dataset
allGalaxy <- subset(allGalaxy, select = -ActivityID)
```

A second, independent tidy dataset with the average of each variable for each activity and each subject was created.
```{r}
tidyGalaxy <- aggregate(allGalaxy, by=list(activity=allGalaxy$Activity, subject=allGalaxy$Subject), mean)

## Removes redundant Activity and Subject headers
tidyGalaxy <- subset(tidyGalaxy, select = -Activity)
tidyGalaxy <- subset(tidyGalaxy, select = -Subject)
```


tidyGalaxy.txt
========================================================
tidyGalaxy.txt is an independent tidy dataset has the average of each variable for each activity and each subject.


