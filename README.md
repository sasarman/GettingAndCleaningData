---
title: "README"
author: "Chris Sasarman"
date: "Saturday, October 25, 2014"
output: html_document
---



### Running the script
* Install package "dplyr"
```
install.packages("dplyr")
```
* Set the working directory to the location of your run_analysis.R script
```
setwd("<path-to-your-script-directory>")
```
* Source the run_analysis.R script
```
source("run_analysis.R")
```
* Output of the script is file **average_signals.txt** in the working directory



### How the script works
1. The script starts by reading raw data from the data files:  
 X_test.txt (test set measurements) is stored in **xTest** data frame  
 y_test.txt (activity codes for test set) is stored in **yTest** data frame  
 subject_test.txt (subjects for the test set) is stored in **subjectTest** data frame  
 X_train.txt (train set measurements) is stored in **xTrain** data frame  
 y_train.txt (activity codes for train set) is stored in **yTrain** data frame  
 subject_train.txt (subjects for the train set) is stored in **subjectTrain** data frame  
 activity_labels.txt (activity lookup table) is stored in **activityLabels** data frame  
 features.txt (measurement labels) is stored in **features** data frame  
Each data frame is inspected using the dim() and str() fucntions  

2. The Train and Test measurement sets are then merged together using the rbind() function (in that order).  
The combined result is stored in **xData**, a 10299 x 561 data frame.

3. The mean() and std() measurements are extracted from the xData set and stored in **xDataClipped** data frame  
 Start by using grep() function to find the column numbers that match mean() or std() in the labels for the features data frame (second column of the data frame). Result is saved as *myColumns*.  
 Since same columns are used in the combined xData frame, we can subset this data frames by those columns to obtain the reduced data frame *xDataClipped* that contains only variables on interest.  
 The reduced data frame *xDataClipped* is of size 10299 x 66  

4. Bind 2 left-most columns with activity codes and subjects from both sets to the reduced data set  
 The activity codes from train and test sets are bound together (in that order) using rbind() function  
 The subjects from train and test sets are bound together (in that order) using rbind() function  
 Then finally the activity codes and subects are boud to the reduced frame using cbind() function  
The result is stored in **myData**, which is now a 10299 x 68 data frame  

5. Replace activity codes with descriptive activity names in the data set
In order to do that we use the activityLevels data set, which is in essence a lookup table for the activities.  using a for loop, we will iterate over all the codes in activityLevels and replace them in the **myData** data set with corresponding names, like this ```myData[1][myData[1]==code] <- as.character(activityLevels[code,2])```
To validate this step of transformations, we run ```table(myData[,1])``` command before and after replacement; result needs to be identical.

6. Label the data set with descriptive variable names  
To do that, we create vector **myColumnsNames** as a concatenation of "Activity", "Subject" and the feature labels obtained at step 3 *myColumns[,2]*.  This vector is then applied to the *myData* set using the names() function.

7. For the final step, we create another tidy data set with the average of each variable for each activity and each subject
This is accomplished using the *dplyr* package, bu chaing functions ```group_by(Activity,Subject)``` and ```summarise_each(funs(mean))``` on the *myData* set.  
The result is stored in **avgByActivitySubject**, a 180 x 68 data frame.  
The final data set is written to **average_signals.txt** file using the wtite.table() function.  
