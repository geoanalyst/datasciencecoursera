#this script for assignment Getting & Cleaning Data course project

# opening training and test datasets
test_data <- read.table("X_test.txt")
train_data <- read.table("X_train.txt")
test_act <- read.table("y_test.txt")
train_act <- read.table("y_train.txt")
act_labels <- read.table("activity_labels.txt")
train_sub <- read.table("subject_train.txt")
test_sub <- read.table("subject_test.txt")

# convert variables into 'dplyr' format
test_data <- tbl_dt(test_data)
train_data <- tbl_dt(train_data)
test_act <- tbl_dt(test_act)
train_act <- tbl_dt(train_act)
act_labels <- tbl_dt(act_labels)
test_act <- merge(test_act, act_labels, by.x = "V1", by.y = "V1", all = TRUE)
train_act <- merge(train_act, act_labels, by.x = "V1", by.y = "V1", all = TRUE)

# first step: merging the training and the test sets to create one data set
f_data <- rbind(train_data, test_data)
f_act <- rbind(train_act, test_act)
f_sub <- rbind(train_sub, test_sub)

# second step: extracting only the measurements on the mean and standard deviation
# for each measurement
features <- read.table("features.txt") # reading feature names
list <- <- c(grep("mean", as.character(features$V2)), grep("std", as.character(features$V2)))
f_data <- select(f_data, list) # selecting only variables with standard deviation and
                               # mean measurements

# third & forth steps: getting labels the data set with descriptive variable names
names(f_data) <- features[list, ]$V2
f_data <- cbind(f_data, f_act$V2)
names(f_data)[80] <- "activity_name"
f_data <- cbind(f_data, f_sub$V1)
names(f_data)[81] <- "subject_id"

# fifth step: creating tidy dataset
g_data <- group_by(f_data, subject_id, activity_name)
t_data <- summarise_each(g_data, funs(mean))
write.table(t_data, "tidy_data.txt", row.names = FALSE)
