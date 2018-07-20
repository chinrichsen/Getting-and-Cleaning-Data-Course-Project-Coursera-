# Getting and Cleaning Data Course Project Coursera

## Data set information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain

## Attribute Information:

For each record in the dataset it is provided: 
1) Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
2) Triaxial Angular velocity from the gyroscope. 
3) A 561-feature vector with time and frequency domain variables. 
4) Its activity label. 
5) An identifier of the subject who carried out the experiment

## Data sets used for the analysis (txt format) in order of use

1) "features.txt"

2) "activity_labels.txt"

3) "subject_train.txt"

4) "X_train.txt"

5) "y_train.txt"

6) "subject_test.txt"

7) "X_test.txt"

8) "y_test.txt"

## Data transformation

To accomplish the goals of the project, the main required steps were:

### 1) Merges the training and the test sets to create one data set
a) Read the features table, read the labels of the different activities and change the name of the column of the activity labels (more descriptive)

b) Read the subject train data and change the name of the column of subject train to one more descriptive

c) Read the subject x train data and change the names of the columns of x_train for the names of the second column of features

d) Read the subject y train data and change the names of the column of y_train for "act_ID"

e) Read the subject test data and change the name of the column of subject test to one more descriptive

f) Read the subject x test data and change the names of the columns of x_test for the names of the second column of features

g) Read the subject y test data and change the names of the column of y_train for "act_ID"

h) Merge the train data sets and the test data sets independently

i) Merge the train and test data sets previously merged

### 2) Extracts only the measurements on the mean and standard deviation for each measurement
a) Subset the complete data set, only with the columns related to the ID's, Mean and Standar Deviation

b) Change the activities ID for the names of the activities (for example, standing, walking, etc., instead the numbers)

c) Save the name of the columns of the subset data set, to make some changes in the characters

### 3) Uses descriptive activity names to name the activities in the data set
a) Change the character "-mean" for "Mean", which is more representative

b) Change the character "-std" for "Std", which is more representative

c) Change the character "-" for "->", pointing with an arrow the specific coordinate (x, y or)

d) Change the charactera "(", ")" and "," for ""

### 4) Appropriately labels the data set with descriptive variable names
a) Change the name of the columns of the complete data set with these new column names

b) Get the number of columns in the data set

c) Reorder data set to have the first column the subj_ID and the second the act_ID, and then the rest

### 5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
a) Use the melt function to reagroup the data set according to the id's (an all the respective measures in a separate column)

b) Calculate the mean of the melted data set, considering the combinations of sub_ID and the act_ID

c) Create a tidy data set in text file

d) Create a tidy data set in csv file

## Variables used

### The ID variables used were

1) "subj_ID"

2) "act_ID"

### Considering the calculation of the mean, the variables used were
 
1) "tBodyAccMean->X"
2) "tBodyAccMean->Y"                  
 [5] "tBodyAccMean->Z"                   "tBodyAccStd->X"                   
 [7] "tBodyAccStd->Y"                    "tBodyAccStd->Z"                   
 [9] "tGravityAccMean->X"                "tGravityAccMean->Y"               
[11] "tGravityAccMean->Z"                "tGravityAccStd->X"                
[13] "tGravityAccStd->Y"                 "tGravityAccStd->Z"                
[15] "tBodyAccJerkMean->X"               "tBodyAccJerkMean->Y"              
[17] "tBodyAccJerkMean->Z"               "tBodyAccJerkStd->X"               
[19] "tBodyAccJerkStd->Y"                "tBodyAccJerkStd->Z"               
[21] "tBodyGyroMean->X"                  "tBodyGyroMean->Y"                 
[23] "tBodyGyroMean->Z"                  "tBodyGyroStd->X"                  
[25] "tBodyGyroStd->Y"                   "tBodyGyroStd->Z"                  
[27] "tBodyGyroJerkMean->X"              "tBodyGyroJerkMean->Y"             
[29] "tBodyGyroJerkMean->Z"              "tBodyGyroJerkStd->X"              
[31] "tBodyGyroJerkStd->Y"               "tBodyGyroJerkStd->Z"              
[33] "tBodyAccMagMean"                   "tBodyAccMagStd"                   
[35] "tGravityAccMagMean"                "tGravityAccMagStd"                
[37] "tBodyAccJerkMagMean"               "tBodyAccJerkMagStd"               
[39] "tBodyGyroMagMean"                  "tBodyGyroMagStd"                  
[41] "tBodyGyroJerkMagMean"              "tBodyGyroJerkMagStd"              
[43] "fBodyAccMean->X"                   "fBodyAccMean->Y"                  
[45] "fBodyAccMean->Z"                   "fBodyAccStd->X"                   
[47] "fBodyAccStd->Y"                    "fBodyAccStd->Z"                   
[49] "fBodyAccMeanFreq->X"               "fBodyAccMeanFreq->Y"              
[51] "fBodyAccMeanFreq->Z"               "fBodyAccJerkMean->X"              
[53] "fBodyAccJerkMean->Y"               "fBodyAccJerkMean->Z"              
[55] "fBodyAccJerkStd->X"                "fBodyAccJerkStd->Y"               
[57] "fBodyAccJerkStd->Z"                "fBodyAccJerkMeanFreq->X"          
[59] "fBodyAccJerkMeanFreq->Y"           "fBodyAccJerkMeanFreq->Z"          
[61] "fBodyGyroMean->X"                  "fBodyGyroMean->Y"                 
[63] "fBodyGyroMean->Z"                  "fBodyGyroStd->X"                  
[65] "fBodyGyroStd->Y"                   "fBodyGyroStd->Z"                  
[67] "fBodyGyroMeanFreq->X"              "fBodyGyroMeanFreq->Y"             
[69] "fBodyGyroMeanFreq->Z"              "fBodyAccMagMean"                  
[71] "fBodyAccMagStd"                    "fBodyAccMagMeanFreq"              
[73] "fBodyBodyAccJerkMagMean"           "fBodyBodyAccJerkMagStd"           
[75] "fBodyBodyAccJerkMagMeanFreq"       "fBodyBodyGyroMagMean"             
[77] "fBodyBodyGyroMagStd"               "fBodyBodyGyroMagMeanFreq"         
[79] "fBodyBodyGyroJerkMagMean"          "fBodyBodyGyroJerkMagStd"          
[81] "fBodyBodyGyroJerkMagMeanFreq"      "angletBodyAccMeangravity"         
[83] "angletBodyAccJerkMeangravityMean"  "angletBodyGyroMeangravityMean"    
[85] "angletBodyGyroJerkMeangravityMean" "angleXgravityMean"                
[87] "angleYgravityMean"                 "angleZgravityMean"

## Data source

Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws
