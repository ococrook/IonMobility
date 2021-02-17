## Get Ion mobility column function
##
## methods for Spectra and and MsBackendDataFrame

imtime <- function(object){
    
    Spectra:::.get_column(spectraData(object), "ionMobilityDriftTime")
}

setMethod("imtime", "Spectra", function(object) {
    Spectra:::.get_column(spectraData(object), "ionMobilityDriftTime")
})

setMethod("imtime", "MsBackendDataFrame", function(object) {
    Spectra:::.get_column(spectraData(object), "ionMobilityDriftTime")
})
