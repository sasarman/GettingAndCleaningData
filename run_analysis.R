# read in X_test.txt data file (test set measurements) and inspect 
xTest <- read.table("./UCI HAR Dataset/test/X_test.txt")
dim(xTest)
#str(xTest)

# read in y_test.txt data file (activity codes for test set) and inspect 
yTest <- read.table("./UCI HAR Dataset/test/y_test.txt")
dim(yTest)
#str(yTest)

# read in subject_test.txt data file (subjects for the test set) and inspect 
subjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
dim(subjectTest)
#str(subjectTest)

# read in X_train.txt data file (train set measurements) and inspect 
xTrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
dim(xTrain)
#str(xTrain)

# read in y_train.txt data file (activity codes for train set) and inspect 
yTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
dim(yTrain)
#str(yTrain)

# read in subject_train.txt (subjects for the train set) data file and inspect 
subjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
dim(subjectTrain)
#str(subjectTrain)

# read in activity_labels.txt data file (activity lookup table) and inspect 
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
dim(activityLabels)
#str(activityLabels)

# read in features.txt data file (measurement labels) and inspect 
features <- read.table("./UCI HAR Dataset/features.txt")
dim(features)
#str(features)


# S1: merge train and test sets together
xData <- rbind(xTrain,xTest)
dim(xData)
#str(xData)


# S2: extract only the measurements on the mean and std for each measurement
# first, try out grep() to find mean() or std() columns (leave out meanFreq)
features
features[,2]
grep("mean\\(|std\\(",features[,2])
# now find the column numbers for mean and std measurements from the feature set
myColumns <- features[grep("mean\\(|std\\(",features[,2]),]
dim(myColumns) # 66 x 2
#str(myColumns)
myColumns[,1] # numbers
myColumns[,2] # descriptive names
# last, this is the reduced data set, containing only my columns (66 columns)
xDataClipped <- xData[,myColumns[,1]]
dim(xDataClipped) # 10299 x 66
#str(xDataClipped)

# bind left-most columns with activity codes and subjects from both sets 
yData <- rbind(yTrain, yTest)
subjectData <- rbind(subjectTrain, subjectTest)
myData <- cbind(yData,subjectData,xDataClipped)
unique(myData[,1]) # range 1:6
dim(myData) # 10299 x 68
#str(myData)


# S3: use descriptive activity names to name the activities in the data set
# using the activity lookup table, replace activity code with descriptive name 
table(myData[,1]) 
for (code in activityLabels[,1]) {
    myData[1][myData[1]==code] <- as.character(activityLabels[code,2])    
}
table(myData[,1]) # same values as prior table


# S4: label the data set with descriptive variable names
myColumnNames <- c("Activity","Subject",as.vector(myColumns[,2]))
myColumnNames
names(myData) <- myColumnNames
#str(myData)  # see the descriptive variable names?
dim(myData)


# S5: create another tidy data set with the average of each variable 
# for each activity and each subject
# install.packages("dplyr")
library(dplyr)
avgByActivitySubject <- myData %>%
    group_by(Activity,Subject) %>%        
    summarise_each(funs(mean))

#str(avgByActivitySubject)
dim(avgByActivitySubject)  #180 x 68
write.table(avgByActivitySubject, file="average_signals.txt", row.names=FALSE)
