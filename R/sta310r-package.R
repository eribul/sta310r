# Package-level documentation -------------------------------------------------

#' sta310r: Data sets for the survival analysis course
#'
#' The `sta310r` package collects the data sets that accompany Collett (2023),
#' *Modelling Survival Data in Medical Research* (4th edition), and the
#' computer exercises used in the STA310 course at the University of Gothenburg.
#'
#' @section Data sets:
#' All 33 data sets distributed with the book are available with their original
#' column names and the short object names used in the course material (for
#' example [iud], [breast], [myeloma], [ovarian], [liver] and [rats]). Use
#' `data(package = "sta310r")` or the package index for a complete list. Each
#' data set is documented with the background of the study, the coded variables
#' and the relevant examples in Collett (2023).
#'
#' In addition, [scottish_mbc_cohort] holds the synthetic Scottish metastatic
#' breast cancer cohort used in the computer exercise on survival analysis. It
#' does not come from the book and is documented with its own source.
#'
#' @section Computer exercises:
#' The package ships the computer exercises as vignettes. Use
#' `vignette("cs1-survival-data")` for the questions and
#' `vignette("cs1-solutions")` for the same document with the solutions.
#'
#' @references
#' Collett, D. (2023) *Modelling Survival Data in Medical Research*, 4th ed.
#' Chapman & Hall/CRC.
#'
#' @keywords internal
"_PACKAGE"
