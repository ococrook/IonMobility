# Filter Ion mobility function

setMethod("filterIonMobility", "Spectra",
          function(object, 
                   imtime = c(0, Inf),
                   msLevel. = unique(msLevel(object))) {
              if (!Spectra:::.check_ms_level(object, msLevel.))
                  return(object)
              if (is.numeric(imtime)) {
                  if (length(imtime) == 1)
                      imtime <- c(imtime, Inf)
                  if (length(imtime) != 2)
                      stop("'imtime' should be of length specifying a ",
                           "lower ion mobility limit or of length two defining ",
                           "a lower and upper limit.")
                  object <- .filterIonMobility(object,
                                               imtime = imtime,
                                               msLevel = msLevel.)
                  object@processing <- Spectra:::.logging(
                      object@processing, "Filter: select ion mobility within ",
                      "[", imtime[1], ", ", imtime[2],
                      "] in spectra of MS level(s) ",
                      paste0(msLevel., collapse = ", "), ".")
              } else stop("'imtime' has to be numeric")
              object
          })