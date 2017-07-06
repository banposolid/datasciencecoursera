pollutandmean <- function(directory, pollutant, id = 1: 332) {
        filepath <- paste(getwd(), "/", directory, sep="")
        filename <- as.character(list.files(filepath))
        avg <- c()
        
        for(i in id) {
                tempdata <- read.csv(paste(filepath, "/", filename[i], sep=""), header=TRUE, sep=",")
                na_removed <-tempdata[!is.na(tempdata[, pollutant]), pollutant]
                avg <- c(avg, na_removed) 
        }
        mean(avg)
        
}
