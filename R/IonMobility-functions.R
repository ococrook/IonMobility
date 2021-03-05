## Get Ion mobility column function
##
## methods for Spectra and and MsBackendDataFrame

ionMobilityTime <- function(object, ...){
    
   ionMobilityTime(object, ...)
}

"ionMobilityTime<-" <- function(object, value){
    do.call("$<-", list(object@backend, "ionMobilityDriftTime", value))
}


.filterIonMobility <- function(x,
                               imtime = numeric(),
                               msLevel = integer()){
    x[which(MsCoreUtils::between(ionMobilityTime(x), imtime)), , drop = FALSE]
}

setMethod("ionMobilityTime", "Spectra", function(object, ...) {
    do.call("$", list(object@backend, "ionMobilityDriftTime"))
})

setReplaceMethod("ionMobilityTime", "Spectra", function(object, value) {
    do.call("$<-", list(object@backend, "ionMobilityDriftTime", value))
})