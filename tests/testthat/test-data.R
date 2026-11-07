base_datasets <- c(
  "aortic",
  "bladder",
  "bmt",
  "bmt_leukaemia",
  "bmt_outcome",
  "breast",
  "breast_rfs",
  "cgd",
  "cirrhosis",
  "cirrhosis_cp",
  "cirrhosis_lbr",
  "dialysis",
  "ducks",
  "gastric",
  "help",
  "hepatitis",
  "hyper",
  "iud",
  "kidney",
  "kidney_centres",
  "liver",
  "liver_wait",
  "lung_transplant",
  "melanoma",
  "mice",
  "myeloma",
  "numerical_illustration",
  "ovarian",
  "prostate",
  "pulmonary",
  "rats",
  "scottish_mbc_cohort",
  "tamoxifen",
  "ulcer"
)

test_that("the package data are the data sets, the index and the aliases", {
  items <- data(package = "sta310r")$results[, "Item"]
  aliases <- dataset_by_exercise$alias[!is.na(dataset_by_exercise$alias)]

  expect_setequal(items, c(base_datasets, aliases, "dataset_by_exercise"))
})

test_that("the data set index links each data set to its examples", {
  index <- dataset_by_exercise

  expect_s3_class(index, "data.frame")
  expect_named(
    index,
    c(
      "dataset",
      "dataset_title",
      "alias",
      "example",
      "chapter",
      "chapter_title",
      "example_title",
      "n_rows",
      "n_variables",
      "note"
    )
  )
  expect_setequal(unique(index$dataset), base_datasets)
  expect_identical(anyDuplicated(index$alias[!is.na(index$alias)]), 0L)
  expect_equal(nrow(index), 130L)

  pkg <- as.environment("package:sta310r")
  aliased <- index[!is.na(index$alias), ]
  expect_identical(aliased$alias, paste0("d", aliased$example))
  expect_true(all(grepl("^[0-9]+[.][0-9]+$", aliased$example)))
  expect_equal(
    index$n_rows,
    unname(vapply(index$dataset, function(x) nrow(get(x, envir = pkg)), integer(1)))
  )
  expect_equal(
    index$n_variables,
    unname(vapply(index$dataset, function(x) ncol(get(x, envir = pkg)), integer(1)))
  )
})

test_that("every data set alias is a copy of its data set", {
  pkg <- as.environment("package:sta310r")
  aliased <- dataset_by_exercise[!is.na(dataset_by_exercise$alias), ]

  for (i in seq_len(nrow(aliased))) {
    expect_identical(
      get(aliased$alias[i], envir = pkg),
      get(aliased$dataset[i], envir = pkg)
    )
  }
})

test_that("the aliases are part of the package data", {
  items <- data(package = "sta310r")$results[, "Item"]
  aliases <- dataset_by_exercise$alias[!is.na(dataset_by_exercise$alias)]

  expect_true(all(aliases %in% items))
})

test_that("the synthetic Scottish MBC cohort has the structure used in the exercise", {
  expect_identical(dim(scottish_mbc_cohort), c(850L, 21L))
  expect_identical(sum(scottish_mbc_cohort$status), 703L)
  expect_identical(sort(unique(scottish_mbc_cohort$status)), c(0L, 1L))
  expect_s3_class(scottish_mbc_cohort$diagnosis_date, "Date")
  expect_identical(
    sort(unique(scottish_mbc_cohort$hormone_receptor)),
    c("HR-negative", "HR-positive")
  )
  expect_gte(min(scottish_mbc_cohort$observed_time), 0)
})

test_that("the data sets have the structure used in the course", {
  expect_identical(dim(iud), c(18L, 2L))
  expect_identical(names(iud), c("time", "status"))
  expect_identical(dim(myeloma), c(48L, 10L))
  expect_identical(dim(bmt_leukaemia), c(23L, 8L))
  expect_identical(dim(liver), c(1761L, 7L))
  expect_identical(dim(ovarian), c(26L, 7L))
  expect_identical(dim(rats), c(254L, 4L))
})

test_that("the event indicators used in the examples are complete", {
  expect_identical(sort(unique(iud$status)), c(0L, 1L))
  expect_identical(sort(unique(myeloma$status)), c(0L, 1L))
  expect_identical(sort(unique(liver$status)), c(0L, 1L))
  expect_gte(min(iud$time), 0)
  expect_gte(min(myeloma$time), 0)
})
