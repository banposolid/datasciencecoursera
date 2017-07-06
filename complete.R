complete <- function(directory, id = 1:332) {
        filepath <- paste(getwd(), "/", directory, sep="")
        filename <- as.character(list.files(filepath))
        
        length_id <- length(id)
        complete_row <- c()
        
        
        for(i in id) {
                tempdata <- read.csv(paste(filepath, "/", filename[i], sep=""), header=TRUE, sep=",")
                complete_row <- c(complete_row, sum(complete.cases(tempdata)))
        }
        result <- data.frame(id=id, nobs=complete_row)
        result
}