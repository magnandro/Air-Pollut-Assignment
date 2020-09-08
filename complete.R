complete <- function(directory, id =1:332){
    data <- NULL

    for (i in id ){
        ruta=paste("000",i,sep="")
        temp <- read.csv(paste(directory,"/", substr(ruta, nchar(ruta)-2,nchar(ruta)) ,".csv", sep=""))
        temp=temp[complete.cases(temp),]
        x<- c(id=temp$ID[1],nobs=nrow(temp))
        data= rbind(data, x)
    }
    
    rownames(data)<-1:nrow(data)
    data
}


complete("specdata", 1)
##   id nobs
## 1  1  117

complete("specdata", 30:25) 
##   id nobs
## 1  2 1041
## 2  4  474
## 3  8  192
## 4 10  148
## 5 12   96


complete("specdata", c(2, 4, 8, 10, 12))
##   id nobs
## 1  2 1041
## 2  4  474
## 3  8  192
## 4 10  148
## 5 12   96

complete("specdata", 3)
##   id nobs
## 1  3  243




