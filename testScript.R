library(dBrandsConvert)



# No data for testing, must enter it manually. If attempting
brandSize('woman', 'mcq', 10)
brandSize('woman', 'givenchy', 7.5)

brandSize('woman', 'Fendi', 7)
brandSize('woman', 'givenchy', 7)
brandSize('woman', 'mcq', 7)
brandSize('woman', 'sw', 7)
brandSize('woman', 'tom ford', 7)

# This test should produce Error message because there is no Male data yet for this package.
brandSize('Male', 'givenchy', 7)

# Nike is not a brand that was utilized in this package
brandSize('woman', 'nike', 7)


# No data for testing, must enter it manually. Currently commented out because function is not reading png file properly. But the two most important functions are working.

#brandChecker("alexander mcqueen")
#brandChecker("tom ford")
