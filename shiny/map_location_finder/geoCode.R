geoCode <- function(address,verbose=FALSE) {
        if(verbose) cat(address,"\n")
        u <- url(address)
        doc <- getURL(u)
        x <- fromJSON(doc,simplify = FALSE)
        if(x$status=="OK") {
                lat <- as.numeric(x$results[[1]]$geometry$location$lat)
                lng <- as.numeric(x$results[[1]]$geometry$location$lng)
                #location_type <- x$results[[1]]$geometry$location_type
                #formatted_address <- x$results[[1]]$formatted_address
                return(matrix(c(lng, lat),1,2))
        } else {
                return(c(NA,NA))
        }
}