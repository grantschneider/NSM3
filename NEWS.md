# NSM3 version 1.20.1

* Fixed a bug in `pPage()` where the Exact and Monte Carlo p-values were overwritten by the asymptotic calculation, causing the function to return 0. The Monte Carlo branch also compared the wrong simulation statistic.

* Fixed a bug in `pHaySton()` where the vector (x, g) form returned incorrect exact p-values when the data were not sorted by group. The exact calculation now orders the data by group, matching the sorted and list forms.

# NSM3 version 1.20

* Fixed a bug in `pLepage()` where the p-value was dependent on the order of the input `x` vector. The function now produces consistent results regardless of input order. 