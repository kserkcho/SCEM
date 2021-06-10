
<!-- README.md is generated from README.Rmd. Please edit that file -->

# SCEM

This package is build to perform the Splitting-Coalescence-Estimation
Method (cf. Chazin et al., 2019) to model birth seasonality in studies
of herd animals.

## Installation

You can install the latest version of SCEM by using the following
command:

``` r
devtools::install_github("kserkcho/SCEM")
```

## Authors

[Hannah Chazin](http://www.hannah-chazin.com/), [Soudeep
Deb](http://soudeepd.github.io/), [Joshua
Falk](http://home.uchicago.edu/~jsfalk/), Arun Srinivasan

## Methods

We introduce improved methods for statistically assessing birth
seasonality and intra-annual variation in δ<sup>18</sup>O from faunal
tooth enamel.

The first method estimates input parameters for use with a
previously-developed parametric approach (Tornero et al., 2013). The
relevant code for this approach is `makeFits_OLS.R`, while
`makeFits_initial.R` is the code to implement the same method but with
given initial conditions for two parameters. and can be used to use
respective methods. The latter can be used to show the disadvantage of
the existing approach.

The second method we propose is a new idea that uses a nonparametric
clustering procedure to group individuals with similar time series data
and estimate birth seasonality based on the clusters. This method is
more efficient across different scenarios, especially when less of the
tooth row is preserved. The new approach offers a high level of
statistical rigor and flexibility in dealing with the time series data
produced through intra-individual sampling in isotopic analysis. One can
use the function `SCEM.R` to implement this method.

When using the SCEM to estimate birth seasonality values, it is
important to keep two things in mind: 1) While the non-parametric
clustering procedure is valid for any kind of time series data, the
estimation of birth seasonality is semi-parametric and will not return
valid results for non-sinusoidal time series; 2) A simulation study
suggests that the SCEM provides accurate estimates of birth seasonality
in second molars as long as the tooth enamel has more than 50% of the
original crown height present (Chazin et al. 2019, Table 1).

Example of implementing the above methods for our data (provided as
`armenia`) can be found in vignettes folder or
<https://kserkcho.github.io/SCEM/>. Other functions in this repository
are used internally in the above-mentioned functions.

## Contact

For any inquiries or questions related to the package, please contact
[kyslf1994@gmail.com](kyslf1994@gmail.com). Regarding questions about
methodology, you can also contact us at
[h.chazin@columbia.edu](h.chazin@columbia.edu) or
[sdeb@uchicago.edu](sdeb@uchicago.edu).

## Reference

Chazin, Hannah, Soudeep Deb, Joshua Falk, and Arun Srinivasan. 2019.
“New Statistical Approaches to Intra-Individual Isotopic Analysis and
Modeling Birth Seasonality in Studies of Herd Animals.” Archaeometry 61
(2): 478–93. <https://doi.org/10.1111/arcm.12432>.

Tornero, C., Bălăşescu, A., Ughetto-Monfrin, J., Voinea, V., Balasse,
M., 2013. Seasonality and season of birth in early Eneolithic sheep from
Cheia (Romania): methodological advances and implications for animal
economy. Journal of Archaeological Science 40, 4039–4055.
<https://doi.org/10.1016/j.jas.2013.05.013>
