step 1
data_read:
https://cran.r-project.org/web/packages/MALDIquantForeign/vignettes/MALDIquantForeign-intro.pdf
install.packages(c("MALDIquant", "MALDIquantForeign"))
library("MALDIquant")
library("MALDIquantForeign")
exampleDir <- system.file("exampledata",package = "MALDIquantForeign")
spectra = import(file.path(exampleDir,"tiny_continuous.imzML"))

step 2
data_preprocess:

