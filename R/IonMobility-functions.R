## Get Ion mobility column function
##
## methods for Spectra and and MsBackendDataFrame

imtime <- function(object){
    
    Spectra:::.get_column(spectraData(object), "ionMobilityDriftTime")
}

.filterIonMobility <- function(x,
                               imtime = numeric(),
                               msLevel = integer()){
    x[which(MsCoreUtils::between(spectraData(x)[, "ionMobilityDriftTime"], imtime)), , drop = FALSE]
}

setMethod("imtime", "Spectra", function(object) {
    Spectra:::.get_column(spectraData(object), "ionMobilityDriftTime")
})

setMethod("imtime", "MsBackendDataFrame", function(object) {
    Spectra:::.get_column(spectraData(object), "ionMobilityDriftTime")
})
