
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bis620_final

<!-- badges: start -->

[![R-CMD-check](https://github.com/XXuan-1/bis620_final/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/XXuan-1/bis620_final/actions/workflows/R-CMD-check.yaml)
[![test-coverage](https://github.com/XXuan-1/bis620_final/actions/workflows/test-coverage.yaml/badge.svg)](https://github.com/XXuan-1/bis620_final/actions/workflows/test-coverage.yaml)
<!-- badges: end -->

The package bis620.2023 is designed to offer an regression analysis based on a research question with more details in my_vig.Rmd under vignettes/.

## Installation

You can install the development version of bis620_final from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("XXuan-1/bis620_final")
```

## Example

Here are several snapshots of the displays under different selections.

``` r
library(bis620_final)
summary_ecog_trt(adsl)
```

<img src="man/figures/hist.png" width="100%" />


``` r
summary_tbl(adsl)
```

<img src="man/figures/tbl.png" width="100%" />

``` r
analysis("SEX + B_ECOG + B_WEIGHT",adsl)
```

<img src="man/figures/smr.png" width="100%" />


