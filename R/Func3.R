#' Womens Shoe Size for Designer Brands
#'
#' This function allows the user to print out a shoe size conversion chart.
#'
#'
#' @param brand The brand, set default to alexander mcqueen
#' @return A shoe size chart
#' @author Darius Cuthbert
#' @export
#' @examples
#' brandChecker('fendi')
myimages<-list.files("images/", pattern = ".png", full.names = TRUE)
include_graphics(myimages)

brandChecker<-function(brand ="alexander mcqueen"){
  brand <-trimws(tolower(brand))
  if (brand == "alexander mcqueen"){
    return(knitr::include_graphics("images/Checker1.png"))
  }
  if (brand == "fendi"){
    return(knitr::include_graphics("images/Checker2.png"))
  }
  if (brand == "givenchy"){
    return(knitr::include_graphics("images/Checker3.png"))
  }
  if (brand == "stuart weitzman"){
    return(knitr::include_graphics("images/Checker4.png"))
  }
  if (brand == "tom ford"){
    return(knitr::include_graphics("images/Checker5.png"))
  }
  if (brand %in% c("alexander mcqueen","fendi","givenchy","stuart weitzman", "tom ford") == FALSE){
    return("UPlease check spelling of brand, only accepts full company name, no abbreviations or accronyms")
  }
}
