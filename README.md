# pwr4exp web interface

[**Open the app →**](https://wangkai.shinyapps.io/pwr4exp-app/) · [Method documentation](https://an-ethz.github.io/pwr4exp/articles/pwr4exp.html) · [Report an issue](https://github.com/WangKai7kkw/pwr4exp-app/issues)

This web interface to the R package pwr4exp supports statistical power analysis for designed experiments analyzed using linear mixed models.

Estimate the chance of detecting the effects that matter before you run your experiment.

## Workflow

Prepare plausible assumptions about treatment means and variance components, informed by previous studies, pilot data or biological knowledge. The app guides you through four steps:

1.  **Design setup:** Choose your experimental design and specify the treatment structure and replication.
2.  **Model assumptions:** Review the analysis model and enter the assumed treatment means and variance components.
3.  **Test settings:** Select the effects or comparisons of interest and set the significance level.
4.  **Results & export:** Review the estimated power and download your results.

## Cite pwr4exp

If you use the app or package in your research, please cite:

Wang K, Arshad U, Niu M (2025). Invited review: Enhancing quality of dairy cattle research through adequate power analysis. *Journal of Dairy Science*, **108**(9), 8981–9003. [doi:10.3168/jds.2024-25793](https://doi.org/10.3168/jds.2024-25793)

------------------------------------------------------------------------

Developed by **Ao Wang and Kai Wang** · Animal Nutrition, ETH Zurich.

[Known limitations for custom correlation structures](docs/known-correlation-issues.md) · [Package source](https://github.com/an-ethz/pwr4exp)

<details>

<summary>Run locally or contribute</summary>

Requires **R ≥ 4.4**. After cloning or downloading this repository, run from its folder:

``` r
install.packages("renv")
renv::restore()
shiny::runApp()
```

Development checks:

``` sh
Rscript tests/testthat.R
Rscript tests/smoke_app.R
# Optional browser tests (requires Chrome):
Rscript tests/e2e.R
```

</details>
