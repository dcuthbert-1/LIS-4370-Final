#' Helper Function
#'
#' This function is a helper function that helps the main function to convert shoe sizes.
#'
#' @param sizeInput Womans US shoe size
#' @param brandStandard Multiple Designer Brand standard sizes
#' @param brandSize Chosen Brand Size in EU
#' @return Womans Designer Brand shoe size
#' @author Darius Cuthbert
#' @keywords internal

##Starter packages
#install.packages(c("devtools", "roxygen2", "testthat", "knitr"))
#install.packages('plyr', repos = "http://cran.us.r-project.org")
#options(repos=structure(c(CRAN="https:theclosest_mirror_to_yourlocation.com")))
library('devtools')
library('roxygen2')
library('testthat')
library('knitr')
use_gpl_license()
##Check version
#install.packages("rstudioapi")
#rstudioapi::isAvailable("0.99.149")

#devtools::install_github("hadley/devtools")




converter <- function(sizeInput,brandStandard, brandSize){
  sizeInput <- as.integer(sizeInput)
  if (sizeInput %in% brandStandard){
    id<- which(brandStandard == sizeInput)
  }
  else{

    return(0)
  }

  return(brandSize[[id]])
}
