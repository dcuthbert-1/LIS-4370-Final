library(testthat)
library(dBrandsConvert)


# No data for testing, must enter it manually. If attempting
brandSize('woman', 'Fendi', 9)
brandSize('woman', 'givenchy', 7)


# This test should produce Error message because there is no Male data yet for this package.
brandSize('Male', 'givenchy', 7)



#Currently brandChecker function isn't seen in the package even though its clearly Func3 , still attempting to fix.

#brandChecker("alexander mcqueen")
#brandChecker("tom ford")
