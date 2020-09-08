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


cr <- corr("specdata")                
cr <- sort(cr)   
RNGversion("3.5.1")
set.seed(868)                
out <- round(cr[sample(length(cr), 5)], 4)
print(out)

cr <- corr("specdata", 2000)                
n <- length(cr)                
cr <- corr("specdata", 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))