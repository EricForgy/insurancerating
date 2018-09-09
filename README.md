
<!-- README.md is generated from README.Rmd. Please edit that file -->

# insurancerating

The goal of insurancerating is to give analytic techniques that can be
used in insurance rating. In particular, the methods can be used to
determine class intervals for continuous numerical variables in P\&C
insurance.

## Installation

You can install insurancerating from github with:

``` r
# install.packages("devtools")
devtools::install_github("MHaringa/insurancerating")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
# Find class intervals for continuous numerical variables
clustering_frequency(MTPL, nclaims, age_policyholder, exposure)
```
