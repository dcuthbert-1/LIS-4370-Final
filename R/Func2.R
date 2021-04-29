
#' Shoe Size Converter
#'
#' This function is the main function in this package. It allows users to convert their UK or EU shoe sizes to US sizes.
#'
#' @param whoShoe The gender of the user, either male or female, default to female
#' @param brand Which sizing standard does the user use, UK or Europe, default to UK
#' @param size User's UK or EU shoe size
#' @return User's US shoe size
#' @author Darius <dcuthbert1@usf.edu>
#' @export
#' @examples
#' brandSize('woman', 'Fendi', 9)
#' brandSize('woman', 'givenchy', 7)

brandSize<-function(whoShoe="woman", brand="alexander mcqueen", size = 0){
  whoShoe <-trimws(tolower(whoShoe))
  brand <- trimws(tolower(brand))
  bSize = 0
  #Start with getting Womans known shoe size.
  if (whoShoe == "woman"){
    oSize = seq(33.5,42,0.5)

    #Change sequence range when needed between brands based on available shoe sizes.
    if (brand == "alexander mcqueen"|| brand == "mcq"){
      brandSeq1 = seq(4,11,0.5)
      bSize = converter(size, brandSeq1, oSize)
    }
    if (brand== "fendi"){
      brandSeq2 = seq(3.5,10,0.5)
      bSize = converter(size, brandSeq2, oSize)
    }
    if (brand== "givenchy"){
      brandSeq3 = seq(3.5,11.5,0.5)
      bSize = converter(size, brandSeq3, oSize)
    }
    if (brand== "stuart weitzman"||brand=="sw"||brand=="weitzman"){
      brandSeq4 = seq(4,11,0.5)
      bSize = converter(size, brandSeq4, oSize)
    }
    if (brand== "tom ford"||brand=="tf"|brand=="ford tom"){
      brandSeq5 = seq(5,11,0.5)
      bSize = converter(size, brandSeq5, oSize)
    }
  }
  #The verbiage in the return statements can change after the vacation or if this specific package wants to be used for further expansion beyond educational use.
  if (brand %in% c("alexander mcqueen","mcq","fendi","givenchy","stuart weitzman","sw","weitzman", "tom ford", "tf", "ford tom") == FALSE){
    return("Unfortunately, at this time this package only contains the top 5 brands that will be shopped at on vacation")
  }

  if (whoShoe %in% c('woman')== FALSE){
    return ("Sorry no Men or Kids allowed on this vacation")
  }

  else{
    return (paste("Your shoe size for this brand is ",bSize,"."))
  }
}
