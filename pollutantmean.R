pollutantmean <- function(directory, pollutant, id =1:332){
    data <- NULL

    for (i in id ){
        ruta=paste("000",i,sep="")
        temp <- read.csv(paste(directory,"/", substr(ruta, nchar(ruta)-2,nchar(ruta)) ,".csv", sep=""))
        data= rbind(data, temp)
    }
    
    x<-mean(data[[pollutant]],na.rm=TRUE)
    x

}

pollutantmean("specdata", "sulfate", 1:10) # [1] 4.064128

pollutantmean("specdata", "nitrate", 70:72) # [1] 1.706047

pollutantmean("specdata", "nitrate", 23) # [1] 1.280833



