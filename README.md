
<!-- README.md is generated from README.Rmd. Please edit that file -->
A package to deal with the weird parts of factors. The implementation and documentation of `fbind()` and `freq_out` are purely based on Jennifer Bryan's `foofactors` package.

Loading the package and providing a preview of the data used:

``` r
library(foofactors)
str(iris)
#> 'data.frame':    150 obs. of  5 variables:
#>  $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
#>  $ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
#>  $ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
#>  $ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
#>  $ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
str(PlantGrowth)
#> 'data.frame':    30 obs. of  2 variables:
#>  $ weight: num  4.17 5.58 5.18 6.11 4.5 4.61 5.17 4.53 5.33 5.14 ...
#>  $ group : Factor w/ 3 levels "ctrl","trt1",..: 1 1 1 1 1 1 1 1 1 1 ...
```

Binding two factors via `fbind()`:

``` r
fbind(iris$Species[c(1, 51, 101)], PlantGrowth$group[c(1, 11, 21)])
#> [1] setosa     versicolor virginica  ctrl       trt1       trt2      
#> Levels: ctrl setosa trt1 trt2 versicolor virginica
```

Obtaining a table of frequencies for the levels of a factor via `freq_out`:

``` r
freq_out(iris$Species)
#> # A tibble: 3 × 2
#>            x     n
#>       <fctr> <int>
#> 1     setosa    50
#> 2 versicolor    50
#> 3  virginica    50
```

Detecting factors that should be characters via `is_char_factor`:

``` r
is_char_factor(iris$Species)
#> [1] FALSE
```

Reordering levels of factor in descending order via `desc_reord`:

``` r
levels(iris$Species)
#> [1] "setosa"     "versicolor" "virginica"
levels(desc_reord(iris$Species))
#> [1] "virginica"  "versicolor" "setosa"
```
