corr <- function(directory, threshold =0){
    vector <- c()

    for (i in id ){
        ruta=paste("000",i,sep="")
        temp <- read.csv(paste(directory,"/", substr(ruta, nchar(ruta)-2,nchar(ruta)) ,".csv", sep=""))
        temp<-temp[complete.cases(temp),]
        if(nrow(temp)>threshold){
            x<- cor(temp[,2:3])
            vector= c(vector, x[2,1])
        }    
    }
    vector
}

cr <- corr("specdata")
summary(cr)
length(cr)