# Build data/dataset_by_exercise.rda and the dX.Y aliases in data/.
#
# The index links each data set in the package to the worked examples of
# Collett (2023) that use it. The example numbers and titles were taken from
# the chapter PDFs of the 4th edition (the "Example X.Y ..." headings); the
# mapping is hard-coded here so that the package can be rebuilt without the
# book next to the repository.
#
# Each example that uses a data set gives it an alias dX.Y, where X.Y is the
# number of the example. A data set used in several examples therefore has
# several aliases, all of them copies of the same object. The aliases let a
# student load the data for Example 3.7 with `d3.7` instead of having to know
# that the example uses `myeloma`.
#
# Run from the package root:
#
#   Rscript data-raw/dataset_by_exercise.R
#
# The script writes data/dataset_by_exercise.rda and one data/dX.Y.rda per
# alias. The data sets themselves are read from data/<name>.rda, so they must
# already have been built (data-raw/data.R and data-raw/scottish_mbc_cohort.R).

# Examples that use each data set -----------------------------------------

examples <- list(
  iud = c("1.1", "2.3", "2.4", "2.5", "2.7", "2.8", "2.9", "2.10",
          "5.1", "5.2", "5.3", "5.4", "16.1", "16.2", "16.3"),
  breast = c("1.2", "2.11", "2.12", "2.13", "2.14", "3.1", "3.3",
             "5.5", "5.6", "5.7", "5.8", "5.13", "5.14", "5.17",
             "10.1", "10.2", "16.4", "16.5", "16.6"),
  myeloma = c("1.3", "2.2", "2.6", "3.2", "3.5", "3.7", "3.8", "3.9",
              "3.15", "3.17", "3.19", "3.20", "4.5", "4.8", "4.9", "5.16"),
  prostate = c("1.4", "3.6", "3.12", "3.16", "5.15"),
  pulmonary = "2.1",
  melanoma = c("2.15", "2.16"),
  hyper = c("3.4", "3.10", "3.11", "3.13", "3.14", "5.10", "6.1", "6.4"),
  dialysis = c("4.1", "4.2", "4.3", "4.4", "4.6", "4.7", "4.10", "4.11",
               "4.12"),
  numerical_illustration = "5.9",
  ovarian = c("5.11", "5.12", "7.1", "7.2", "7.3", "7.4", "8.3"),
  breast_rfs = c("6.5", "6.6"),
  bmt_leukaemia = "8.2",
  cirrhosis = "8.4",
  aortic = c("8.5", "8.6", "8.7", "8.8", "8.9"),
  ulcer = c("9.1", "9.4", "9.5", "9.6", "9.7", "11.1"),
  lung_transplant = "10.3",
  kidney = "10.4",
  gastric = c("11.2", "11.3"),
  kidney_centres = c("11.4", "11.5", "11.6", "11.7", "11.8"),
  liver = c("12.1", "12.2", "12.3", "12.4", "12.5", "12.6"),
  mice = "12.7",
  rats = "13.2",
  tamoxifen = "13.3",
  bmt_outcome = "13.4",
  liver_wait = c("14.1", "14.3"),
  hepatitis = c("15.1", "15.2", "15.3"),
  help = "16.7"
)

# Title of the worked example, as it appears in the book ------------------

example_titles <- c(
  iud = "Time to discontinuation of the use of an IUD",
  breast = "Prognosis for women with breast cancer",
  myeloma = "Survival of multiple myeloma patients",
  prostate = "Comparison of two treatments for prostatic cancer",
  pulmonary = "Pulmonary metastasis",
  melanoma = "Survival times of patients with melanoma",
  hyper = "Treatment of hypernephroma",
  dialysis = "Infection in patients on dialysis",
  numerical_illustration = "A numerical illustration",
  ovarian = "Chemotherapy in ovarian cancer patients",
  breast_rfs = "Recurrence-free survival in breast cancer patients",
  bmt_leukaemia = "Bone marrow transplantation in the treatment of leukaemia",
  cirrhosis = "Data from a cirrhosis study",
  aortic = "Survival following aortic valve replacement",
  ulcer = "Recurrence of an ulcer",
  lung_transplant = "Survival of patients registered for a lung transplant",
  kidney = "Survival following kidney transplantation",
  gastric = "Survival of patients with gastric cancer",
  kidney_centres = "Comparisons between kidney transplant centres",
  liver = "Survival of liver transplant recipients",
  mice = "Survival of laboratory mice",
  rats = "Recurrence of mammary tumours in female rats",
  tamoxifen = "Clinical trial of tamoxifen in breast cancer patients",
  bmt_outcome = "Patient outcome following bone marrow transplantation",
  liver_wait = "Time to death while waiting for a liver transplant",
  hepatitis = "Survival from chronic active hepatitis",
  help = "Health evaluation and linkage to primary care"
)

# Descriptive title of each data set, as used on its help page ------------

dataset_titles <- c(
  iud = "Time to discontinuation of an intrauterine device (IUD)",
  breast = "Prognosis for women with breast cancer",
  myeloma = "Survival of multiple myeloma patients",
  prostate = "Comparison of two treatments for prostatic cancer",
  pulmonary = "Pulmonary metastasis in patients with osteosarcoma",
  melanoma = "Survival times of patients with melanoma",
  hyper = "Treatment of hypernephroma",
  dialysis = "Infection in patients on dialysis",
  numerical_illustration = "A numerical illustration of two factors",
  ovarian = "Chemotherapy in ovarian cancer patients",
  breast_rfs = "Recurrence-free survival in breast cancer patients",
  bmt_leukaemia = "Bone marrow transplantation in the treatment of leukaemia",
  cirrhosis = "Data from a cirrhosis study (baseline)",
  cirrhosis_lbr = "Data from a cirrhosis study (log-bilirubin data)",
  cirrhosis_cp = "Data from a cirrhosis study (counting process format)",
  aortic = "Survival following aortic valve replacement",
  ulcer = "Recurrence of an ulcer",
  bladder = "Recurrence of bladder cancer",
  rats = "Recurrence of mammary tumours in female rats",
  tamoxifen = "Clinical trial of tamoxifen in breast cancer patients",
  bmt_outcome = "Patient outcome following bone marrow transplantation",
  liver = "Survival of liver transplant recipients",
  mice = "Survival of laboratory mice with competing causes of death",
  kidney = "Survival following kidney transplantation",
  kidney_centres = "Comparisons between kidney transplant centres",
  lung_transplant = "Survival of patients registered for a lung transplant",
  gastric = "Survival of patients with gastric cancer",
  help = "Health evaluation and linkage to primary care",
  liver_wait = "Time to death while waiting for a liver transplant",
  bmt = "Bone marrow transplantation in leukaemia patients",
  hepatitis = "Chronic active hepatitis",
  ducks = "Survival of black ducks",
  cgd = "Chronic granulomatous disease",
  scottish_mbc_cohort = "Synthetic Scottish metastatic breast cancer cohort"
)

chapter_titles <- c(
  "Survival analysis",
  "Some non-parametric procedures",
  "The Cox regression model",
  "Model checking in the Cox regression model",
  "Parametric regression models",
  "Flexible parametric models",
  "Model checking in parametric models",
  "Time-dependent variables",
  "Interval-censored survival data",
  "Frailty models",
  "Non-proportional hazards and institutional comparisons",
  "Competing risks",
  "Multiple events and event history modelling",
  "Dependent censoring",
  "Sample size requirements for a survival study",
  "Bayesian survival analysis",
  "Survival analysis with R"
)

# Notes for the data sets that have no numbered example -------------------

notes <- c(
  cirrhosis_lbr = paste(
    "Long-format log-bilirubin measurements for the cirrhosis study;",
    "used with Example 8.4, whose alias d8.4 is the baseline data."
  ),
  cirrhosis_cp = paste(
    "Counting process form of the cirrhosis study; used with Example 8.4,",
    "whose alias d8.4 is the baseline data."
  ),
  bladder = "Collett (2023), Appendix B.2; no numbered example.",
  ducks = "Collett (2023), Appendix B.3; no numbered example.",
  bmt = "Collett (2023), Appendix B.4; no numbered example.",
  cgd = "Collett (2023), Appendix B.5; no numbered example.",
  scottish_mbc_cohort = paste(
    "Course data set from the Edinburgh Cancer Informatics group;",
    "not from Collett (2023) and not used in a numbered example."
  )
)

# Build the index ---------------------------------------------------------

read_data <- function(name) {
  env <- new.env(parent = emptyenv())
  load(file.path("data", paste0(name, ".rda")), envir = env)
  env[[name]]
}

rows <- list()
for (name in names(examples)) {
  for (ex in examples[[name]]) {
    rows[[length(rows) + 1L]] <- data.frame(
      dataset = name,
      dataset_title = unname(dataset_titles[name]),
      alias = paste0("d", ex),
      example = ex,
      chapter = as.integer(sub("[.].*$", "", ex)),
      chapter_title = chapter_titles[as.integer(sub("[.].*$", "", ex))],
      example_title = unname(example_titles[name]),
      n_rows = nrow(read_data(name)),
      n_variables = ncol(read_data(name)),
      note = NA_character_,
      stringsAsFactors = FALSE
    )
  }
}

# Data sets without a numbered example: one row each, with no alias.

no_example <- setdiff(names(dataset_titles), names(examples))
for (name in no_example) {
  rows[[length(rows) + 1L]] <- data.frame(
    dataset = name,
    dataset_title = unname(dataset_titles[name]),
    alias = NA_character_,
    example = if (name %in% c("cirrhosis_lbr", "cirrhosis_cp")) "8.4" else NA_character_,
    chapter = if (name %in% c("cirrhosis_lbr", "cirrhosis_cp")) 8L else NA_integer_,
    chapter_title = if (name %in% c("cirrhosis_lbr", "cirrhosis_cp")) {
      chapter_titles[8L]
    } else {
      NA_character_
    },
    example_title = if (name %in% c("cirrhosis_lbr", "cirrhosis_cp")) {
      "Data from a cirrhosis study"
    } else {
      NA_character_
    },
    n_rows = nrow(read_data(name)),
    n_variables = ncol(read_data(name)),
    note = unname(notes[name]),
    stringsAsFactors = FALSE
  )
}

dataset_by_exercise <- do.call(rbind, rows)
example_number <- as.integer(sub("^.*[.]", "", dataset_by_exercise$example))
dataset_by_exercise <- dataset_by_exercise[
  order(dataset_by_exercise$chapter, example_number,
        dataset_by_exercise$dataset, na.last = TRUE),
]
rownames(dataset_by_exercise) <- NULL

save(
  dataset_by_exercise,
  file = file.path("data", "dataset_by_exercise.rda"),
  compress = "xz"
)

# Aliases -----------------------------------------------------------------

# Remove alias files from a previous run so that a changed mapping cannot
# leave stale dX.Y objects in the package.
old_aliases <- list.files(
  "data",
  pattern = "^d[0-9]+[.][0-9]+[.]rda$",
  full.names = TRUE
)
if (length(old_aliases)) {
  invisible(file.remove(old_aliases))
}

aliases <- dataset_by_exercise[!is.na(dataset_by_exercise$alias), ]
for (i in seq_len(nrow(aliases))) {
  dataset <- aliases$dataset[i]
  alias <- aliases$alias[i]
  env <- new.env(parent = emptyenv())
  load(file.path("data", paste0(dataset, ".rda")), envir = env)
  assign(alias, env[[dataset]], envir = env)
  save(
    list = alias,
    file = file.path("data", paste0(alias, ".rda")),
    envir = env,
    compress = "xz"
  )
}

message(
  "Wrote data/dataset_by_exercise.rda (",
  nrow(dataset_by_exercise),
  " rows) and ",
  nrow(aliases),
  " alias files."
)
message(
  "Data sets with examples: ",
  length(unique(aliases$dataset)),
  "; without: ",
  length(no_example),
  " (",
  paste(no_example, collapse = ", "),
  ")."
)
