<!-- README.md is generated from README.Rmd. Please edit that file -->
passwordrandom is an R package to interface to the PasswordRandom.com API - <http://www.passwordrandom.com/api>

The following functions are implemented:

-   `random_chars`: Generate random characters
-   `random_doubles`: Generate random doubles
-   `random_guids`: Generate random guids
-   `random_ints`: Generate random integers
-   `random_passwords`: Generate random passwords

The following data sets are included:

### News

-   Version 0.0.0.9000 released

### Installation

``` r
devtools::install_github("hrbrmstr/passwordrandom")
```

### Usage

``` r
library(passwordrandom)

# current verison
packageVersion("passwordrandom")
#> [1] '0.0.0.9000'

random_chars()
#>  [1] "m" "M" "Z" "p" "G" "B" "E" "m" "B" "v"

random_doubles()
#>  [1] 82.6272 89.6146  1.2591 77.9003 62.5740 68.8216 61.9789 37.9001 20.6352  4.6343

random_guids()
#>  [1] "fdf5d58e-ebe9-4db3-b429-303e8a5e1fdf" "20ad94f9-a232-4fa8-91c6-ba21e9925b96"
#>  [3] "d44c1c4b-0117-43c3-b77c-89bc33caf59f" "500ce633-1197-4c92-aff4-1eac94fd2d8d"
#>  [5] "13b1a1a0-f7fa-40b6-a9da-9e445ac26d2b" "06362286-8d5b-4dfc-9283-df564291120d"
#>  [7] "36dbb258-ede0-4a8a-b416-5609f11c8be1" "9b27dcca-26d7-4467-9a54-3862ccbd06cf"
#>  [9] "4f53fe11-d4f0-4c01-a2fc-97e35983d567" "b1f0df88-e790-4d48-8683-ebe68db9f0ca"

random_ints()
#>  [1] 82 17 97 20 87 91 57 42 22 62

random_passwords()
#>  [1] "RoeXO2{75bh"  "RiuFE6'10hj"  "TauTY1)92pj"  "XooHO8%87rv"  "MooJA1^40np"  "KyaDU3\\35tr" "KiaQY0>91nr" 
#>  [8] "XoeGO1%68nt"  "KeoFI0>33cc"  "VeaDI2$51jc"
```

### Test Results

``` r
library(passwordrandom)
library(testthat)

date()
#> [1] "Sun Aug  2 17:20:06 2015"

test_dir("tests/")
#> testthat results ========================================================================================================
#> OK: 0 SKIPPED: 0 FAILED: 0
#> 
#> DONE
```

### Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
