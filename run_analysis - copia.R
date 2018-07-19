library(reshape2)
#Set the working directory
path <- setwd("C:/Users/Carlos Hinrichsen/DataQuiz4/UCI HAR Dataset")
# Read the features table
features <- read.table("features.txt")
# Read the labels of the different activities
activity_labels <- read.table("activity_labels.txt")
#Change the name of the column of the activity labels (more descriptive)
colnames(activity_labels) <- c("act_ID","act_TYPE")
#Read the subject train data
subject_train <- read.table("train/subject_train.txt",header=F)
#Change the name of the column of subject train to one more descriptive
colnames(subject_train) <- "subj_ID"
#Read the subject x train data
x_train <- read.table("train/X_train.txt",header=FALSE)
#Change the names of the columns of x_train for the names of the second column of features
colnames(x_train) <- features[,2]
#Read the subject y train data
y_train <- read.table("train/y_train.txt",header=FALSE)
#Change the names of the column of y_train for "act_ID"
colnames(y_train) <- "act_ID"
#Read the subject test data
subject_test <- read.table("test/subject_test.txt",header=F)
#Change the name of the column of subject test to one more descriptive
colnames(subject_test) <- "subj_ID"
#Read the subject x test data
x_test <- read.table("test/X_test.txt",header=FALSE)
#Change the names of the columns of x_test for the names of the second column of features
colnames(x_test) <- features[,2]
#Read the subject y test data
y_test <- read.table("test/y_test.txt",header=FALSE)
#Change the names of the column of y_train for "act_ID"
colnames(y_test) <- "act_ID"
#Merge the train data sets
train_dataset = cbind(subject_train,x_train,y_train)
#Merge the test data sets
test_dataset = cbind(subject_test,x_test,y_test)
#Merge the train and test data sets
complete_dataSet = rbind(train_dataset,test_dataset)
#Subset the complete data set, only with the columns related to the ID's, Mean and Standar Deviation
subset_completedataset <- complete_dataSet[,c(grep("ID|[Mm]ean|[Ss]td",names(complete_dataSet)))]
#Change the activities ID for the names of the activities (for example, standing, walking, etc., instead the numbers)
subset_completedataset$act_ID <-activity_labels[,2][match(subset_completedataset$act_ID, activity_labels[,1])]
#Save the name of the columns of the subset data set, to make some changes in the characters
newcol_names <- colnames(subset_completedataset)
#Change the character "-mean" for "Mean", whichis more representative
newcol_names <- gsub("-mean","Mean",newcol_names)
#Change the character "-std" for "Std", whichis more representative
newcol_names <- gsub("-std","Std",newcol_names)
#Change the character "-" for "->", pointing with an arrow the specific coordinate (x, y or)
newcol_names <- gsub("[-]","->",newcol_names)
#Change the charactera "(", ")" and "," for ""
newcol_names <- gsub("[(),]","",newcol_names)
#Change the name of the columns of the complete data set with these new column names
colnames(subset_completedataset) <- newcol_names
#Get the number of columns in the data set
q <- length(subset_completedataset[1,])
#Reorder data set to have the first column the subj_ID and the second the act_ID, and then the rest
subset_completedataset2 <- subset_completedataset[c(1,q,2:(q-1))]
#Use the melt function to reagroup the data set according to the id's (an all the respective measures in a separate column)
melt_subset <- melt(subset_completedataset2, id= c("subj_ID","act_ID"))
#Calculate the mean of the melted data set, considering the combinations of sub_ID and the act_ID
mean_subset <- dcast(melt_subset,subj_ID + act_ID ~ variable,mean)
#Create a tidy data set in text file
write.table(mean_subset, "tidy_data_set.txt",row.names=FALSE,quote=F,sep='\t')
#Create a tidy data set in csv file
write.table(mean_subset, "tidy_data_set.csv",row.names=FALSE, sep=",")
