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

brandChecker<-function(brand ="alexander mcqueen"){
  brand <-trimws(tolower(brand))
  if (brand == "alexander mcqueen"){
    return(knitr::include_graphics("Checker1.png"))
  }
  if (brand == "fendi"){
    return(knitr::include_graphics("Checker2.png"))
  }
  if (brand == "givenchy"){
    return(knitr::include_graphics("Checker3.png"))
  }
  if (brand == "stuart weitzman"){
    return(knitr::include_graphics("Checker4.png"))
  }
  if (brand == "tom ford"){
    return(knitr::include_graphics("Checker5.png"))
  }
  if (brand %in% c("alexander mcqueen","fendi","givenchy","stuart weitzman", "tom ford") == FALSE){
    return("UPlease check spelling of brand, only accepts full company name, no abbreviations or accronyms")
  }
}
