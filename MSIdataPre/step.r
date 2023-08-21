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
2.1 Quality Control:
Test whether all spectra contain the same number of data points and are not empty
2.2 Variance Stabilization:
Square root transformation to simplify graphical visualization and to overcome the potential dependency of the variance from the mean.
方差稳定化（Variance Stabilization）是在统计学和数据分析领域中使用的一种方法，用于处理数据中存在的方差不稳定性。
在许多统计分析和建模技术中，假设数据的方差是恒定的（方差齐性），这有助于确保分析的准确性和可靠性。
然而，实际数据中常常存在方差不稳定的情况，即不同部分的数据具有不同的方差。
2.3 Smoothing: 
21 point Savitzky-Golay-Filter 去噪技术
2.4 Baseline Correction
2.5 Intensity Calibration/Normalization

