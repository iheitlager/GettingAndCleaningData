# This is the main script for the Getting and Cleaning Data Coursera Course project
# Written by: Ilja Heitlager
#
# The execute type 'run_analysis.R'

# expected outcome
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of
#    each variable for each activity and each subject.

# Steps:
# load training and test Data
# load features.txt
# load activities
# merge data and add header
# replace activity code with activity label
# filter data set

library(dplyr)

fld.data <- "UCI HAR Dataset/"
features <- read.table(file.path(fld.data, "features.txt"))
select_columns <- filter(features, grepl("mean", V2) | grepl("std", V2))
labels <- read.table(file.path(fld.data, "activity_labels.txt"))

df.x_test <- read.table(file.path(fld.data, "test", "X_test.txt"))
df.y_test <- read.table(file.path(fld.data, "test", "y_test.txt"))
df.subject_test  <- read.table(file.path(fld.data, "test", "subject_test.txt"))
#df.x_train <- read.table(file.path(fld.data, "train", "X_train.txt"))
#df.y_train <- read.table(file.path(fld.data, "train", "y_train.txt"))
#df.subject_train  <- read.table(file.path(fld.data, "train", "subject_train.txt"))


df.labels <- select(left_join(df.y_test, labels, by=c("V1")), c(2))
names(df.labels) <- c('activity')
df.labels$ID <- seq.int(nrow(df.labels))

names(df.subject_test) <- c('subject')
df.subject_test$ID <- seq.int(nrow(df.subject_test))

df.subset <- select(df.x_test, one_of(paste("V",select_columns[,1], sep="")))
names(df.subset) <- as.vector(select_columns[,2], mode="any")
df.subset$ID <- seq.int(nrow(df.x_test))

df.result <- df.labels %>%
              select(c(2, 1)) %>%
              full_join(df.subject_test, by=c("ID")) %>%
              full_join(df.subset, by=c("ID"))
#df.result <- full_join(df.subset, select(left_join(df.y_test, labels), c(2,3)))