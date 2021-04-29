library(dBrandsConvert)



# No data for testing, must enter it manually. If attempting
brandSize('woman', 'Fendi', 9)
brandSize('woman', 'givenchy', 7)


# This test should produce Error message because there is no Male data yet for this package.
brandSize('Male', 'givenchy', 7)



# No data for testing, must enter it manually. Currently commented out because function is not reading png file properly. But the two most important functions are working.

#brandChecker("alexander mcqueen")
#brandChecker("tom ford")
