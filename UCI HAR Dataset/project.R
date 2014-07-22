#Load the variable labels
labels <- readLines("features.txt")
labels <- c("Subject","Activity","Dataset",labels)
activities <- scan("activity_labels.txt",what="character")
activities <- activities[seq(from=2,to=12,by=2)]
#Load the train data
train_data <- read.table("train/X_train.txt", header=F,sep="")
train_subject <- readLines("train/subject_train.txt")
train_labels <- readLines("train/y_train.txt")
#Substitute numbers with descriptive activity names
for (i in 1:6){
  train_labels[train_labels==i] <- rep(activities[i],length(train_labels[train_labels==i]))
}
#Load the test data
test_data <- read.table("test/X_test.txt", header=F,sep="")
test_subject <- readLines("test/subject_test.txt")
test_labels <- readLines("test/y_test.txt")
#Substitute numbers with descriptive activity names
for (i in 1:6){
  test_labels[test_labels==i] <- rep(activities[i],length(test_labels[test_labels==i]))
}

#Create label vectors to signify dataset of origin
train_lab <- rep("TRAIN",length(train_subject))
test_lab <- rep("TEST",length(test_subject))

#Load the data into data table
library(data.table)
TRAIN <- data.table(train_subject,train_labels,train_lab,train_data)
TEST <- data.table(test_subject,test_labels,test_lab,test_data)
#Merge both datasets
DATA <- rbind(TRAIN,TEST,use.names=F)

#Create filter to determne if variable label contains mean() or std()
filter <- sort(c(1,2,3,grep("mean()",labels,fixed=T),grep("std()",labels,fixed=T)))
DATASET <- DATA[,filter,with=F]
labels <-labels[filter]

#Create tidy dataset
setkey(DATASET,train_subject,train_labels)
TIDY <- DATASET[,lapply(.SD,mean),by="train_subject,train_labels,train_lab"]
#Set variable names for the tidy dataset
setnames(TIDY,labels)
#Export the tidy dataset to file
write.table(TIDY, "tidy.txt", sep="\t")

#Remove all created objects from workspace
rm(test_data)
rm(train_data)
rm(DATA)
rm(DATASET)
rm(TRAIN)
rm(TIDY)
rm(TEST)
rm(activities)
rm(filter)
rm(i)
rm(labels)
rm(train_subject)
rm(train_labels)
rm(test_subject)
rm(test_labels)
rm(train_lab)
rm(test_lab)

#Load the tidy data into the workspace
tidy_data <- read.table("tidy.txt", header=T,sep="\t")