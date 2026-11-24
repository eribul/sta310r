# sta310r (development version)

* Added a new pair of vignettes, "Computer exercise 3: Competing risks" and its
  solutions, based on Chapter 12 of Collett (2023) and the R code in Section
  17.12. The exercise covers the difference between the cause-specific hazard
  and the cumulative incidence function, why the complement of the
  cause-specific Kaplan–Meier estimate is not an incidence, the Aalen–Johansen
  estimator and Gray's test (`tidycmprsk::cuminc()`), cause-specific Cox models
  and the Fine–Gray subdistribution model (`tidycmprsk::crr()`), the
  interpretation of subhazard ratios, and how to check proportional
  subhazards with residuals and a time-dependent term (`cmprsk::crr()`). The
  data sets are `liver` and `mice`. As for the other exercise, the exercise and
  the solutions are generated from a single source file.
* `modelsummary` is now declared in `Suggests` so it can be installed with
  the other dependencies needed to build the competing-risks solutions.
* Corrected the competing-risks solutions, including the interpretation of
  cause-specific hazards and cumulative incidence, the graft failure
  predictions, and the Fine–Gray diagnostics.
* Shortened the competing-risks exercise by removing the optional
  Kaplan–Meier question and combining the two thrombosis model comparisons.
* Simplified the competing-risks solutions using `riskRegression` for
  Fine–Gray predictions, `glance()` for Gray's tests, and `prop.table()` for
  terminal cause proportions.
* Aligned the competing-risks terminology with Chapters 12 and 17 of Collett.
* Removed five subquestions and made the time-dependent Fine and Gray
  calculations optional, with their results provided for interpretation.
* `muhaz` is now declared in `Suggests`; it was used by the first exercise but
  missing from the dependency list, which gave a NOTE in `R CMD check`.
* The package is now published on R-universe at
  <https://eribul.r-universe.dev>, which serves pre-built binaries for Windows,
  macOS and Linux so installation no longer requires a local toolchain (for
  example Rtools on Windows).
* Added a new pair of vignettes, "Computer exercise 1: Describing and
  comparing survival data" and its solutions, restricted to Chapters 1–2 of
  Collett (2023). The exercise covers censoring, the survivor/hazard/cumulative
  hazard functions, the empirical, Kaplan–Meier and Nelson–Aalen estimators,
  Greenwood intervals, hazard estimation, and the log-rank, Wilcoxon,
  Peto–Peto, stratified and trend tests. The life table is not covered. The
  exercise uses only data sets included in the package and does not cover Cox
  regression. The exercise and solutions are generated from a single source
  file; the `show_solutions` parameter controls whether the solution is
  included immediately after each question.
* Removed the teaching functions and their documentation and tests. The
  package now focuses on the data sets and the computer exercises.
* Added `dataset_by_exercise`, an index that links every data set to the worked
  examples of Collett (2023) that use it, with the example number, chapter,
  example title and the data set dimensions.
* Every data set that is used in a numbered example now has an alias `dX.Y`,
  where `X.Y` is the example number. The aliases are ordinary data objects, so
  `d3.7` is the `myeloma` data used in Example 3.7 and `d8.4` is the baseline
  cirrhosis data. A data set used in several examples has one alias per
  example. The aliases are listed on the help page of the corresponding data
  set.
* Added the vignette "Data sets by exercise", which presents the index, and an
  overview of it in the README.
* The examples on the help page of every data set now reproduce the analyses
  that Collett (2023) presents with that data set, with a comment for each
  example number. Each page has two parts: first the code of Chapter 17 (the
  `survival` package, `penalized`, `eha`, `cmprsk`, and so on), then the same
  analysis with more recent tools (`ggsurvfit`, `flexsurv`, `coxme`, `icenReg`,
  `tidycmprsk`, `broom`, `rms`, `glmnet`). Data sets that are not used in a
  numbered example show the analyses suggested for the appendix or, for
  `scottish_mbc_cohort`, the modern tools only.

# sta310r 0.1.0

* First release: the data sets from Collett (2023) and the computer exercises
  used in the STA310 course.
* Added the `scottish_mbc_cohort` data set, the synthetic Scottish metastatic
  breast cancer cohort that is used in the first computer exercise. It does not
  come from Collett (2023); its help page gives the source and licence.
* Added a "Getting started with sta310r" vignette, a "Computer exercise 1:
  Survival analysis" vignette and a "Computer exercise 1: solutions" vignette.
  The exercise and its solutions are separate documents that share the same
  question numbering.
* The vignettes are shipped as pre-built HTML in `inst/doc/`, so
  `vignette(package = "sta310r")` works also when the package is installed
  without building vignettes (`dev/refresh-vignettes.sh` updates them).
* Added unit tests for the structure of the data sets.
