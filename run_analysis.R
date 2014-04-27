url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
dest <- 'Dataset.zip'

# download dataset
if(!file.exists(dest)) {
    
    download.file(url, dest)
    
    unzip(dest)
    
    # print zip content
    files <- unzip(dest, list=TRUE)
    print(files$Name)
    
}

# read feature names and actity labels
features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")

mainDf <- data.frame()

dirs <- c("test", "train")
for(d in dirs) {
    
    currDir <- paste("UCI HAR Dataset", d, sep="/")
    setName <- paste("X_", d, ".txt", sep="")
    setLabels <- paste("y_", d, ".txt", sep="")
    subjectFile <- paste("subject_", d, ".txt", sep="")
    
    # read values. Split by any number of consecutive white spaces.
    df <- read.table(paste(currDir, setName, sep="/"))
    
    names(df) <- features$V2
    
    # get mean and std columns
    m <- grepl('mean|std', features$V2)
    df <- df[, m]
    
    subjects <- read.table(paste(currDir, subjectFile, sep="/"))
    names(subjects) <- c("Subject")
    
    activity_ids <- read.table(paste(currDir, setLabels, sep="/"))
    
    activities <- merge(activity_ids, activity_labels)
    
    names(activities) <- c("AID", "Activity")
    df <- cbind(subjects, activities, df)
    
    mainDf <- rbind(mainDf, df)
}

require('reshape2')

df.m <- melt(mainDf, id.vars=c('Subject', 'Activity'))
df.c <- dcast(df.m, Subject + Activity ~ variable, fun.aggregate=mean)

