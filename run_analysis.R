## Reads in y_train and y_test data, rbinds them together into one
## list of all y observations (y_activity), and assigns a column name
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

y_activity <- rbind(y_train, y_test)
colnames(y_activity) <- "ActivityID"


## Reads in actvity_labels and assigns column names
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

colnames(activity_labels) <- c("ActivityID", "Activity")


## Binds subject_train and subject_test data into one list of all 
## obs (subject), then assigns col name
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

subject <- rbind(subject_train, subject_test)
colnames(subject) <- "Subject"


## Reads in X_train and X_test data and rbinds them into one list
## of all observations (x_features)
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")

x_features <- rbind(x_train, x_test)


## Appropriately labels the data set with descriptive variable names by
## reading in features data and cleaning-up feature names
features <- read.table("./UCI HAR Dataset/features.txt")
featureNames <- features[,2]

## Capitalizes all instances of "mean"
featureNames <- gsub("-mean", "Mean", featureNames)
## Capitalizes all instances of "std"
featureNames <- gsub("-std", "Std", featureNames)
## Removes all ()'s and -'s
featureNames <- gsub("[()-]", "", featureNames)


## Assigns the cleaned up list of featureNames as the column names 
## for the x_features dataset
colnames(x_features) <- featureNames


## Merges the training and the test sets to create one data set 
## (AllGalaxyData) by cbinding the subject, activity, and x_features
## dataframes together
AllGalaxyData <- cbind(subject, y_activity, x_features)


## Extracts only the measurements on the mean and standard deviation
## for each measurment.
SubGalaxyData <- AllGalaxyData[,grepl("[Mm]ean|[Ss]td", names(AllGalaxyData))]


## cbinds the SubjectNumber and ActivityID columns of the AllGalaxyData
## dataset to the SubGalaxyData dataset(which contains only measurements
## on mean and std)
SubGalaxyData <- cbind(AllGalaxyData[,1:2], SubGalaxyData)


## Uses descriptive activity names to name the activies in the data set.
library(plyr)
allGalaxy <- join(activity_labels, SubGalaxyData) 

## Removes ActivityID col because it's no longer needed in the dataset
allGalaxy <- subset(allGalaxy, select = -ActivityID)


## Creates a second, independent tidy data with the average of each
## variable for each activty and each subject.
tidyGalaxy <- aggregate(allGalaxy, by=list(activity=allGalaxy$Activity, subject=allGalaxy$Subject), mean)

## Removes redundant Activity and Subject headers
tidyGalaxy <- subset(tidyGalaxy, select = -Activity)
tidyGalaxy <- subset(tidyGalaxy, select = -Subject)


## Saves tidyGalaxy table as a txt file
write.table(tidyGalaxy, "tidyGalaxy.txt", row.name=FALSE)

## Reads in tidyGalaxy data file
read.table("./tidyGalaxy.txt", header=TRUE)