
## This script assumes that the working directory is UCI HAR Dataset where one can find the 
## folders test and train

## Reading the features label files

features = read.table("features.txt")

## Reading the train files

subject_train = read.table("./train/subject_train.txt")
X_train = read.table("./train/X_train.txt")
colnames(X_train)<-features[,2]
y_train = read.table("./train/y_train.txt")

## Reading the set files

subject_test = read.table("./test/subject_test.txt")
X_test = read.table("./test/X_test.txt")
colnames(X_test)<-features[,2]
y_test = read.table("./test/y_test.txt")

# creating two dataframes: one for the test and other for the train sets

train_df <-data.frame(subject_train,y_train,X_train)
test_df <-data.frame(subject_test,y_test,X_test)

# merging both data sets (Project's point 1: Merges the training and the test sets to create one data set.)

all_df <- rbind(train_df,test_df)
colnames(all_df)[1]<-c("subject")
colnames(all_df)[2]<-c("activity")

alldf_tbl <- tbl_df(all_df)

# Project's point 2:Extracts only the measurements on the mean and standard deviation for each measurement. 

mean_std <- select(alldf_tbl,contains("subject"),contains("activity"), contains("mean"), contains("std"), -contains("Freq"), -contains("angle") )

# Project's point 3:Uses descriptive activity names to name the activities in the data set 

mean_std$actname <- "undefined"

mean_std$actname[mean_std$activity == 1] <- "WALKING"
mean_std$actname[mean_std$activity == 2] <- "WALKING_UPSTAIRS"
mean_std$actname[mean_std$activity == 3] <- "WALKING_DOWNSTAIRS"
mean_std$actname[mean_std$activity == 4] <- "SITTING"
mean_std$actname[mean_std$activity == 5] <- "STANDING"
mean_std$actname[mean_std$activity == 6] <- "LAYING"

# Project's point 4:Appropriately labels the data set with descriptive variable names.
# It was already taken care of.

# Project's point 5: From the data set in step 4, creates a second, independent tidy data set with the average 
#of each variable for each activity and each subject.

tidy_table<-mean_std %>% group_by(subject,actname)%>% summarize_each(funs(mean))
write.table(tidy_table, file = "tidy_table.txt",row.name=FALSE)
