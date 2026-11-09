
# sta310r

<!-- badges: start -->

[![R-CMD-check](https://github.com/eribul/sta310r/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/eribul/sta310r/actions/workflows/R-CMD-check.yaml)
[![Package
documentation](https://img.shields.io/badge/docs-eribul.github.io%2Fsta310r-blue)](https://eribul.github.io/sta310r/)
<!-- badges: end -->

`sta310r` collects the data sets that accompany Collett (2023),
*Modelling Survival Data in Medical Research* (4th edition), together
with the computer exercises used in the STA310 course at the University
of Gothenburg. The package focuses on the data sets, their documentation
and the exercise vignettes.

## Installation

``` r
pak::pak("eribul/sta310r")
```

## Name conflicts

The package includes six data sets with names also used by the
`survival` package, for data sets that are not the same:

- `bladder`
- `cgd`
- `kidney`
- `myeloma`
- `ovarian`
- `rats`

Attach `sta310r` last (`library(sta310r)` AFTER `library(survival)`), or
use `sta310r::xxx` explicitly if both packages are attached. You may
also just refer to the datasets by their aliases as described below.

## Data sets by example

Each data set that is used in a worked example of Collett (2023) has an
alias `dX.Y`, where `X.Y` is the number of the example. For example,
`d3.7` is the `myeloma` data used in Example 3.7, and `d8.4` is the
baseline cirrhosis data. The aliases are ordinary data objects: `d3.7`
works after `library(sta310r)`, and `?d3.7` opens the help page of the
data set. See `vignette("datasets-by-exercise")`.

Note that 2 data sets are used in example 8.4 (hence no aliases used
there).

``` r
library(sta310r)
dataset_by_exercise |>
  dplyr::filter(!is.na(chapter)) |>
  dplyr::mutate(chapter = paste(chapter, chapter_title, sep = ". ")) |>
  dplyr::select(chapter, example, alias, dataset, n_rows, n_variables) |>
  gt::gt(groupname_col = "chapter", id = "datasets-by-example")
```

<div id="datasets-by-example" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#datasets-by-example table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#datasets-by-example thead, #datasets-by-example tbody, #datasets-by-example tfoot, #datasets-by-example tr, #datasets-by-example td, #datasets-by-example th {
  border-style: none;
}
&#10;#datasets-by-example p {
  margin: 0;
  padding: 0;
}
&#10;#datasets-by-example .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#datasets-by-example .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#datasets-by-example .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#datasets-by-example .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#datasets-by-example .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#datasets-by-example .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#datasets-by-example .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#datasets-by-example .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#datasets-by-example .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#datasets-by-example .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#datasets-by-example .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#datasets-by-example .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#datasets-by-example .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#datasets-by-example .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#datasets-by-example .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#datasets-by-example .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#datasets-by-example .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#datasets-by-example .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#datasets-by-example .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#datasets-by-example .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#datasets-by-example .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#datasets-by-example .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#datasets-by-example .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#datasets-by-example .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#datasets-by-example .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#datasets-by-example .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#datasets-by-example .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#datasets-by-example .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#datasets-by-example .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#datasets-by-example .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#datasets-by-example .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#datasets-by-example .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#datasets-by-example .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#datasets-by-example .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#datasets-by-example .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#datasets-by-example .gt_left {
  text-align: left;
}
&#10;#datasets-by-example .gt_center {
  text-align: center;
}
&#10;#datasets-by-example .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#datasets-by-example .gt_font_normal {
  font-weight: normal;
}
&#10;#datasets-by-example .gt_font_bold {
  font-weight: bold;
}
&#10;#datasets-by-example .gt_font_italic {
  font-style: italic;
}
&#10;#datasets-by-example .gt_super {
  font-size: 65%;
}
&#10;#datasets-by-example .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#datasets-by-example .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#datasets-by-example .gt_indent_1 {
  text-indent: 5px;
}
&#10;#datasets-by-example .gt_indent_2 {
  text-indent: 10px;
}
&#10;#datasets-by-example .gt_indent_3 {
  text-indent: 15px;
}
&#10;#datasets-by-example .gt_indent_4 {
  text-indent: 20px;
}
&#10;#datasets-by-example .gt_indent_5 {
  text-indent: 25px;
}
&#10;#datasets-by-example .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}
&#10;#datasets-by-example div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="example">example</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="alias">alias</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="dataset">dataset</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="n_rows">n_rows</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="n_variables">n_variables</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr class="gt_group_heading_row">
      <th colspan="5" class="gt_group_heading" scope="colgroup" id="a1.-Survival-analysis">1. Survival analysis</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="a1.-Survival-analysis  example" class="gt_row gt_right">1.1</td>
<td headers="a1.-Survival-analysis  alias" class="gt_row gt_left">d1.1</td>
<td headers="a1.-Survival-analysis  dataset" class="gt_row gt_left">iud</td>
<td headers="a1.-Survival-analysis  n_rows" class="gt_row gt_right">18</td>
<td headers="a1.-Survival-analysis  n_variables" class="gt_row gt_right">2</td></tr>
    <tr><td headers="a1.-Survival-analysis  example" class="gt_row gt_right">1.2</td>
<td headers="a1.-Survival-analysis  alias" class="gt_row gt_left">d1.2</td>
<td headers="a1.-Survival-analysis  dataset" class="gt_row gt_left">breast</td>
<td headers="a1.-Survival-analysis  n_rows" class="gt_row gt_right">45</td>
<td headers="a1.-Survival-analysis  n_variables" class="gt_row gt_right">3</td></tr>
    <tr><td headers="a1.-Survival-analysis  example" class="gt_row gt_right">1.3</td>
<td headers="a1.-Survival-analysis  alias" class="gt_row gt_left">d1.3</td>
<td headers="a1.-Survival-analysis  dataset" class="gt_row gt_left">myeloma</td>
<td headers="a1.-Survival-analysis  n_rows" class="gt_row gt_right">48</td>
<td headers="a1.-Survival-analysis  n_variables" class="gt_row gt_right">10</td></tr>
    <tr><td headers="a1.-Survival-analysis  example" class="gt_row gt_right">1.4</td>
<td headers="a1.-Survival-analysis  alias" class="gt_row gt_left">d1.4</td>
<td headers="a1.-Survival-analysis  dataset" class="gt_row gt_left">prostate</td>
<td headers="a1.-Survival-analysis  n_rows" class="gt_row gt_right">38</td>
<td headers="a1.-Survival-analysis  n_variables" class="gt_row gt_right">8</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="5" class="gt_group_heading" scope="colgroup" id="a2.-Some-non-parametric-procedures">2. Some non-parametric procedures</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="a2.-Some-non-parametric-procedures  example" class="gt_row gt_right">2.1</td>
<td headers="a2.-Some-non-parametric-procedures  alias" class="gt_row gt_left">d2.1</td>
<td headers="a2.-Some-non-parametric-procedures  dataset" class="gt_row gt_left">pulmonary</td>
<td headers="a2.-Some-non-parametric-procedures  n_rows" class="gt_row gt_right">11</td>
<td headers="a2.-Some-non-parametric-procedures  n_variables" class="gt_row gt_right">1</td></tr>
    <tr><td headers="a2.-Some-non-parametric-procedures  example" class="gt_row gt_right">2.2</td>
<td headers="a2.-Some-non-parametric-procedures  alias" class="gt_row gt_left">d2.2</td>
<td headers="a2.-Some-non-parametric-procedures  dataset" class="gt_row gt_left">myeloma</td>
<td headers="a2.-Some-non-parametric-procedures  n_rows" class="gt_row gt_right">48</td>
<td headers="a2.-Some-non-parametric-procedures  n_variables" class="gt_row gt_right">10</td></tr>
    <tr><td headers="a2.-Some-non-parametric-procedures  example" class="gt_row gt_right">2.3</td>
<td headers="a2.-Some-non-parametric-procedures  alias" class="gt_row gt_left">d2.3</td>
<td headers="a2.-Some-non-parametric-procedures  dataset" class="gt_row gt_left">iud</td>
<td headers="a2.-Some-non-parametric-procedures  n_rows" class="gt_row gt_right">18</td>
<td headers="a2.-Some-non-parametric-procedures  n_variables" class="gt_row gt_right">2</td></tr>
    <tr><td headers="a2.-Some-non-parametric-procedures  example" class="gt_row gt_right">2.4</td>
<td headers="a2.-Some-non-parametric-procedures  alias" class="gt_row gt_left">d2.4</td>
<td headers="a2.-Some-non-parametric-procedures  dataset" class="gt_row gt_left">iud</td>
<td headers="a2.-Some-non-parametric-procedures  n_rows" class="gt_row gt_right">18</td>
<td headers="a2.-Some-non-parametric-procedures  n_variables" class="gt_row gt_right">2</td></tr>
    <tr><td headers="a2.-Some-non-parametric-procedures  example" class="gt_row gt_right">2.5</td>
<td headers="a2.-Some-non-parametric-procedures  alias" class="gt_row gt_left">d2.5</td>
<td headers="a2.-Some-non-parametric-procedures  dataset" class="gt_row gt_left">iud</td>
<td headers="a2.-Some-non-parametric-procedures  n_rows" class="gt_row gt_right">18</td>
<td headers="a2.-Some-non-parametric-procedures  n_variables" class="gt_row gt_right">2</td></tr>
    <tr><td headers="a2.-Some-non-parametric-procedures  example" class="gt_row gt_right">2.6</td>
<td headers="a2.-Some-non-parametric-procedures  alias" class="gt_row gt_left">d2.6</td>
<td headers="a2.-Some-non-parametric-procedures  dataset" class="gt_row gt_left">myeloma</td>
<td headers="a2.-Some-non-parametric-procedures  n_rows" class="gt_row gt_right">48</td>
<td headers="a2.-Some-non-parametric-procedures  n_variables" class="gt_row gt_right">10</td></tr>
    <tr><td headers="a2.-Some-non-parametric-procedures  example" class="gt_row gt_right">2.7</td>
<td headers="a2.-Some-non-parametric-procedures  alias" class="gt_row gt_left">d2.7</td>
<td headers="a2.-Some-non-parametric-procedures  dataset" class="gt_row gt_left">iud</td>
<td headers="a2.-Some-non-parametric-procedures  n_rows" class="gt_row gt_right">18</td>
<td headers="a2.-Some-non-parametric-procedures  n_variables" class="gt_row gt_right">2</td></tr>
    <tr><td headers="a2.-Some-non-parametric-procedures  example" class="gt_row gt_right">2.8</td>
<td headers="a2.-Some-non-parametric-procedures  alias" class="gt_row gt_left">d2.8</td>
<td headers="a2.-Some-non-parametric-procedures  dataset" class="gt_row gt_left">iud</td>
<td headers="a2.-Some-non-parametric-procedures  n_rows" class="gt_row gt_right">18</td>
<td headers="a2.-Some-non-parametric-procedures  n_variables" class="gt_row gt_right">2</td></tr>
    <tr><td headers="a2.-Some-non-parametric-procedures  example" class="gt_row gt_right">2.9</td>
<td headers="a2.-Some-non-parametric-procedures  alias" class="gt_row gt_left">d2.9</td>
<td headers="a2.-Some-non-parametric-procedures  dataset" class="gt_row gt_left">iud</td>
<td headers="a2.-Some-non-parametric-procedures  n_rows" class="gt_row gt_right">18</td>
<td headers="a2.-Some-non-parametric-procedures  n_variables" class="gt_row gt_right">2</td></tr>
    <tr><td headers="a2.-Some-non-parametric-procedures  example" class="gt_row gt_right">2.10</td>
<td headers="a2.-Some-non-parametric-procedures  alias" class="gt_row gt_left">d2.10</td>
<td headers="a2.-Some-non-parametric-procedures  dataset" class="gt_row gt_left">iud</td>
<td headers="a2.-Some-non-parametric-procedures  n_rows" class="gt_row gt_right">18</td>
<td headers="a2.-Some-non-parametric-procedures  n_variables" class="gt_row gt_right">2</td></tr>
    <tr><td headers="a2.-Some-non-parametric-procedures  example" class="gt_row gt_right">2.11</td>
<td headers="a2.-Some-non-parametric-procedures  alias" class="gt_row gt_left">d2.11</td>
<td headers="a2.-Some-non-parametric-procedures  dataset" class="gt_row gt_left">breast</td>
<td headers="a2.-Some-non-parametric-procedures  n_rows" class="gt_row gt_right">45</td>
<td headers="a2.-Some-non-parametric-procedures  n_variables" class="gt_row gt_right">3</td></tr>
    <tr><td headers="a2.-Some-non-parametric-procedures  example" class="gt_row gt_right">2.12</td>
<td headers="a2.-Some-non-parametric-procedures  alias" class="gt_row gt_left">d2.12</td>
<td headers="a2.-Some-non-parametric-procedures  dataset" class="gt_row gt_left">breast</td>
<td headers="a2.-Some-non-parametric-procedures  n_rows" class="gt_row gt_right">45</td>
<td headers="a2.-Some-non-parametric-procedures  n_variables" class="gt_row gt_right">3</td></tr>
    <tr><td headers="a2.-Some-non-parametric-procedures  example" class="gt_row gt_right">2.13</td>
<td headers="a2.-Some-non-parametric-procedures  alias" class="gt_row gt_left">d2.13</td>
<td headers="a2.-Some-non-parametric-procedures  dataset" class="gt_row gt_left">breast</td>
<td headers="a2.-Some-non-parametric-procedures  n_rows" class="gt_row gt_right">45</td>
<td headers="a2.-Some-non-parametric-procedures  n_variables" class="gt_row gt_right">3</td></tr>
    <tr><td headers="a2.-Some-non-parametric-procedures  example" class="gt_row gt_right">2.14</td>
<td headers="a2.-Some-non-parametric-procedures  alias" class="gt_row gt_left">d2.14</td>
<td headers="a2.-Some-non-parametric-procedures  dataset" class="gt_row gt_left">breast</td>
<td headers="a2.-Some-non-parametric-procedures  n_rows" class="gt_row gt_right">45</td>
<td headers="a2.-Some-non-parametric-procedures  n_variables" class="gt_row gt_right">3</td></tr>
    <tr><td headers="a2.-Some-non-parametric-procedures  example" class="gt_row gt_right">2.15</td>
<td headers="a2.-Some-non-parametric-procedures  alias" class="gt_row gt_left">d2.15</td>
<td headers="a2.-Some-non-parametric-procedures  dataset" class="gt_row gt_left">melanoma</td>
<td headers="a2.-Some-non-parametric-procedures  n_rows" class="gt_row gt_right">30</td>
<td headers="a2.-Some-non-parametric-procedures  n_variables" class="gt_row gt_right">4</td></tr>
    <tr><td headers="a2.-Some-non-parametric-procedures  example" class="gt_row gt_right">2.16</td>
<td headers="a2.-Some-non-parametric-procedures  alias" class="gt_row gt_left">d2.16</td>
<td headers="a2.-Some-non-parametric-procedures  dataset" class="gt_row gt_left">melanoma</td>
<td headers="a2.-Some-non-parametric-procedures  n_rows" class="gt_row gt_right">30</td>
<td headers="a2.-Some-non-parametric-procedures  n_variables" class="gt_row gt_right">4</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="5" class="gt_group_heading" scope="colgroup" id="a3.-The-Cox-regression-model">3. The Cox regression model</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="a3.-The-Cox-regression-model  example" class="gt_row gt_right">3.1</td>
<td headers="a3.-The-Cox-regression-model  alias" class="gt_row gt_left">d3.1</td>
<td headers="a3.-The-Cox-regression-model  dataset" class="gt_row gt_left">breast</td>
<td headers="a3.-The-Cox-regression-model  n_rows" class="gt_row gt_right">45</td>
<td headers="a3.-The-Cox-regression-model  n_variables" class="gt_row gt_right">3</td></tr>
    <tr><td headers="a3.-The-Cox-regression-model  example" class="gt_row gt_right">3.2</td>
<td headers="a3.-The-Cox-regression-model  alias" class="gt_row gt_left">d3.2</td>
<td headers="a3.-The-Cox-regression-model  dataset" class="gt_row gt_left">myeloma</td>
<td headers="a3.-The-Cox-regression-model  n_rows" class="gt_row gt_right">48</td>
<td headers="a3.-The-Cox-regression-model  n_variables" class="gt_row gt_right">10</td></tr>
    <tr><td headers="a3.-The-Cox-regression-model  example" class="gt_row gt_right">3.3</td>
<td headers="a3.-The-Cox-regression-model  alias" class="gt_row gt_left">d3.3</td>
<td headers="a3.-The-Cox-regression-model  dataset" class="gt_row gt_left">breast</td>
<td headers="a3.-The-Cox-regression-model  n_rows" class="gt_row gt_right">45</td>
<td headers="a3.-The-Cox-regression-model  n_variables" class="gt_row gt_right">3</td></tr>
    <tr><td headers="a3.-The-Cox-regression-model  example" class="gt_row gt_right">3.4</td>
<td headers="a3.-The-Cox-regression-model  alias" class="gt_row gt_left">d3.4</td>
<td headers="a3.-The-Cox-regression-model  dataset" class="gt_row gt_left">hyper</td>
<td headers="a3.-The-Cox-regression-model  n_rows" class="gt_row gt_right">36</td>
<td headers="a3.-The-Cox-regression-model  n_variables" class="gt_row gt_right">4</td></tr>
    <tr><td headers="a3.-The-Cox-regression-model  example" class="gt_row gt_right">3.5</td>
<td headers="a3.-The-Cox-regression-model  alias" class="gt_row gt_left">d3.5</td>
<td headers="a3.-The-Cox-regression-model  dataset" class="gt_row gt_left">myeloma</td>
<td headers="a3.-The-Cox-regression-model  n_rows" class="gt_row gt_right">48</td>
<td headers="a3.-The-Cox-regression-model  n_variables" class="gt_row gt_right">10</td></tr>
    <tr><td headers="a3.-The-Cox-regression-model  example" class="gt_row gt_right">3.6</td>
<td headers="a3.-The-Cox-regression-model  alias" class="gt_row gt_left">d3.6</td>
<td headers="a3.-The-Cox-regression-model  dataset" class="gt_row gt_left">prostate</td>
<td headers="a3.-The-Cox-regression-model  n_rows" class="gt_row gt_right">38</td>
<td headers="a3.-The-Cox-regression-model  n_variables" class="gt_row gt_right">8</td></tr>
    <tr><td headers="a3.-The-Cox-regression-model  example" class="gt_row gt_right">3.7</td>
<td headers="a3.-The-Cox-regression-model  alias" class="gt_row gt_left">d3.7</td>
<td headers="a3.-The-Cox-regression-model  dataset" class="gt_row gt_left">myeloma</td>
<td headers="a3.-The-Cox-regression-model  n_rows" class="gt_row gt_right">48</td>
<td headers="a3.-The-Cox-regression-model  n_variables" class="gt_row gt_right">10</td></tr>
    <tr><td headers="a3.-The-Cox-regression-model  example" class="gt_row gt_right">3.8</td>
<td headers="a3.-The-Cox-regression-model  alias" class="gt_row gt_left">d3.8</td>
<td headers="a3.-The-Cox-regression-model  dataset" class="gt_row gt_left">myeloma</td>
<td headers="a3.-The-Cox-regression-model  n_rows" class="gt_row gt_right">48</td>
<td headers="a3.-The-Cox-regression-model  n_variables" class="gt_row gt_right">10</td></tr>
    <tr><td headers="a3.-The-Cox-regression-model  example" class="gt_row gt_right">3.9</td>
<td headers="a3.-The-Cox-regression-model  alias" class="gt_row gt_left">d3.9</td>
<td headers="a3.-The-Cox-regression-model  dataset" class="gt_row gt_left">myeloma</td>
<td headers="a3.-The-Cox-regression-model  n_rows" class="gt_row gt_right">48</td>
<td headers="a3.-The-Cox-regression-model  n_variables" class="gt_row gt_right">10</td></tr>
    <tr><td headers="a3.-The-Cox-regression-model  example" class="gt_row gt_right">3.10</td>
<td headers="a3.-The-Cox-regression-model  alias" class="gt_row gt_left">d3.10</td>
<td headers="a3.-The-Cox-regression-model  dataset" class="gt_row gt_left">hyper</td>
<td headers="a3.-The-Cox-regression-model  n_rows" class="gt_row gt_right">36</td>
<td headers="a3.-The-Cox-regression-model  n_variables" class="gt_row gt_right">4</td></tr>
    <tr><td headers="a3.-The-Cox-regression-model  example" class="gt_row gt_right">3.11</td>
<td headers="a3.-The-Cox-regression-model  alias" class="gt_row gt_left">d3.11</td>
<td headers="a3.-The-Cox-regression-model  dataset" class="gt_row gt_left">hyper</td>
<td headers="a3.-The-Cox-regression-model  n_rows" class="gt_row gt_right">36</td>
<td headers="a3.-The-Cox-regression-model  n_variables" class="gt_row gt_right">4</td></tr>
    <tr><td headers="a3.-The-Cox-regression-model  example" class="gt_row gt_right">3.12</td>
<td headers="a3.-The-Cox-regression-model  alias" class="gt_row gt_left">d3.12</td>
<td headers="a3.-The-Cox-regression-model  dataset" class="gt_row gt_left">prostate</td>
<td headers="a3.-The-Cox-regression-model  n_rows" class="gt_row gt_right">38</td>
<td headers="a3.-The-Cox-regression-model  n_variables" class="gt_row gt_right">8</td></tr>
    <tr><td headers="a3.-The-Cox-regression-model  example" class="gt_row gt_right">3.13</td>
<td headers="a3.-The-Cox-regression-model  alias" class="gt_row gt_left">d3.13</td>
<td headers="a3.-The-Cox-regression-model  dataset" class="gt_row gt_left">hyper</td>
<td headers="a3.-The-Cox-regression-model  n_rows" class="gt_row gt_right">36</td>
<td headers="a3.-The-Cox-regression-model  n_variables" class="gt_row gt_right">4</td></tr>
    <tr><td headers="a3.-The-Cox-regression-model  example" class="gt_row gt_right">3.14</td>
<td headers="a3.-The-Cox-regression-model  alias" class="gt_row gt_left">d3.14</td>
<td headers="a3.-The-Cox-regression-model  dataset" class="gt_row gt_left">hyper</td>
<td headers="a3.-The-Cox-regression-model  n_rows" class="gt_row gt_right">36</td>
<td headers="a3.-The-Cox-regression-model  n_variables" class="gt_row gt_right">4</td></tr>
    <tr><td headers="a3.-The-Cox-regression-model  example" class="gt_row gt_right">3.15</td>
<td headers="a3.-The-Cox-regression-model  alias" class="gt_row gt_left">d3.15</td>
<td headers="a3.-The-Cox-regression-model  dataset" class="gt_row gt_left">myeloma</td>
<td headers="a3.-The-Cox-regression-model  n_rows" class="gt_row gt_right">48</td>
<td headers="a3.-The-Cox-regression-model  n_variables" class="gt_row gt_right">10</td></tr>
    <tr><td headers="a3.-The-Cox-regression-model  example" class="gt_row gt_right">3.16</td>
<td headers="a3.-The-Cox-regression-model  alias" class="gt_row gt_left">d3.16</td>
<td headers="a3.-The-Cox-regression-model  dataset" class="gt_row gt_left">prostate</td>
<td headers="a3.-The-Cox-regression-model  n_rows" class="gt_row gt_right">38</td>
<td headers="a3.-The-Cox-regression-model  n_variables" class="gt_row gt_right">8</td></tr>
    <tr><td headers="a3.-The-Cox-regression-model  example" class="gt_row gt_right">3.17</td>
<td headers="a3.-The-Cox-regression-model  alias" class="gt_row gt_left">d3.17</td>
<td headers="a3.-The-Cox-regression-model  dataset" class="gt_row gt_left">myeloma</td>
<td headers="a3.-The-Cox-regression-model  n_rows" class="gt_row gt_right">48</td>
<td headers="a3.-The-Cox-regression-model  n_variables" class="gt_row gt_right">10</td></tr>
    <tr><td headers="a3.-The-Cox-regression-model  example" class="gt_row gt_right">3.19</td>
<td headers="a3.-The-Cox-regression-model  alias" class="gt_row gt_left">d3.19</td>
<td headers="a3.-The-Cox-regression-model  dataset" class="gt_row gt_left">myeloma</td>
<td headers="a3.-The-Cox-regression-model  n_rows" class="gt_row gt_right">48</td>
<td headers="a3.-The-Cox-regression-model  n_variables" class="gt_row gt_right">10</td></tr>
    <tr><td headers="a3.-The-Cox-regression-model  example" class="gt_row gt_right">3.20</td>
<td headers="a3.-The-Cox-regression-model  alias" class="gt_row gt_left">d3.20</td>
<td headers="a3.-The-Cox-regression-model  dataset" class="gt_row gt_left">myeloma</td>
<td headers="a3.-The-Cox-regression-model  n_rows" class="gt_row gt_right">48</td>
<td headers="a3.-The-Cox-regression-model  n_variables" class="gt_row gt_right">10</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="5" class="gt_group_heading" scope="colgroup" id="a4.-Model-checking-in-the-Cox-regression-model">4. Model checking in the Cox regression model</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="a4.-Model-checking-in-the-Cox-regression-model  example" class="gt_row gt_right">4.1</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  alias" class="gt_row gt_left">d4.1</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  dataset" class="gt_row gt_left">dialysis</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  n_rows" class="gt_row gt_right">13</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  n_variables" class="gt_row gt_right">5</td></tr>
    <tr><td headers="a4.-Model-checking-in-the-Cox-regression-model  example" class="gt_row gt_right">4.2</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  alias" class="gt_row gt_left">d4.2</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  dataset" class="gt_row gt_left">dialysis</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  n_rows" class="gt_row gt_right">13</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  n_variables" class="gt_row gt_right">5</td></tr>
    <tr><td headers="a4.-Model-checking-in-the-Cox-regression-model  example" class="gt_row gt_right">4.3</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  alias" class="gt_row gt_left">d4.3</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  dataset" class="gt_row gt_left">dialysis</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  n_rows" class="gt_row gt_right">13</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  n_variables" class="gt_row gt_right">5</td></tr>
    <tr><td headers="a4.-Model-checking-in-the-Cox-regression-model  example" class="gt_row gt_right">4.4</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  alias" class="gt_row gt_left">d4.4</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  dataset" class="gt_row gt_left">dialysis</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  n_rows" class="gt_row gt_right">13</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  n_variables" class="gt_row gt_right">5</td></tr>
    <tr><td headers="a4.-Model-checking-in-the-Cox-regression-model  example" class="gt_row gt_right">4.5</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  alias" class="gt_row gt_left">d4.5</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  dataset" class="gt_row gt_left">myeloma</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  n_rows" class="gt_row gt_right">48</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  n_variables" class="gt_row gt_right">10</td></tr>
    <tr><td headers="a4.-Model-checking-in-the-Cox-regression-model  example" class="gt_row gt_right">4.6</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  alias" class="gt_row gt_left">d4.6</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  dataset" class="gt_row gt_left">dialysis</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  n_rows" class="gt_row gt_right">13</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  n_variables" class="gt_row gt_right">5</td></tr>
    <tr><td headers="a4.-Model-checking-in-the-Cox-regression-model  example" class="gt_row gt_right">4.7</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  alias" class="gt_row gt_left">d4.7</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  dataset" class="gt_row gt_left">dialysis</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  n_rows" class="gt_row gt_right">13</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  n_variables" class="gt_row gt_right">5</td></tr>
    <tr><td headers="a4.-Model-checking-in-the-Cox-regression-model  example" class="gt_row gt_right">4.8</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  alias" class="gt_row gt_left">d4.8</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  dataset" class="gt_row gt_left">myeloma</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  n_rows" class="gt_row gt_right">48</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  n_variables" class="gt_row gt_right">10</td></tr>
    <tr><td headers="a4.-Model-checking-in-the-Cox-regression-model  example" class="gt_row gt_right">4.9</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  alias" class="gt_row gt_left">d4.9</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  dataset" class="gt_row gt_left">myeloma</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  n_rows" class="gt_row gt_right">48</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  n_variables" class="gt_row gt_right">10</td></tr>
    <tr><td headers="a4.-Model-checking-in-the-Cox-regression-model  example" class="gt_row gt_right">4.10</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  alias" class="gt_row gt_left">d4.10</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  dataset" class="gt_row gt_left">dialysis</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  n_rows" class="gt_row gt_right">13</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  n_variables" class="gt_row gt_right">5</td></tr>
    <tr><td headers="a4.-Model-checking-in-the-Cox-regression-model  example" class="gt_row gt_right">4.11</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  alias" class="gt_row gt_left">d4.11</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  dataset" class="gt_row gt_left">dialysis</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  n_rows" class="gt_row gt_right">13</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  n_variables" class="gt_row gt_right">5</td></tr>
    <tr><td headers="a4.-Model-checking-in-the-Cox-regression-model  example" class="gt_row gt_right">4.12</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  alias" class="gt_row gt_left">d4.12</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  dataset" class="gt_row gt_left">dialysis</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  n_rows" class="gt_row gt_right">13</td>
<td headers="a4.-Model-checking-in-the-Cox-regression-model  n_variables" class="gt_row gt_right">5</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="5" class="gt_group_heading" scope="colgroup" id="a5.-Parametric-regression-models">5. Parametric regression models</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="a5.-Parametric-regression-models  example" class="gt_row gt_right">5.1</td>
<td headers="a5.-Parametric-regression-models  alias" class="gt_row gt_left">d5.1</td>
<td headers="a5.-Parametric-regression-models  dataset" class="gt_row gt_left">iud</td>
<td headers="a5.-Parametric-regression-models  n_rows" class="gt_row gt_right">18</td>
<td headers="a5.-Parametric-regression-models  n_variables" class="gt_row gt_right">2</td></tr>
    <tr><td headers="a5.-Parametric-regression-models  example" class="gt_row gt_right">5.2</td>
<td headers="a5.-Parametric-regression-models  alias" class="gt_row gt_left">d5.2</td>
<td headers="a5.-Parametric-regression-models  dataset" class="gt_row gt_left">iud</td>
<td headers="a5.-Parametric-regression-models  n_rows" class="gt_row gt_right">18</td>
<td headers="a5.-Parametric-regression-models  n_variables" class="gt_row gt_right">2</td></tr>
    <tr><td headers="a5.-Parametric-regression-models  example" class="gt_row gt_right">5.3</td>
<td headers="a5.-Parametric-regression-models  alias" class="gt_row gt_left">d5.3</td>
<td headers="a5.-Parametric-regression-models  dataset" class="gt_row gt_left">iud</td>
<td headers="a5.-Parametric-regression-models  n_rows" class="gt_row gt_right">18</td>
<td headers="a5.-Parametric-regression-models  n_variables" class="gt_row gt_right">2</td></tr>
    <tr><td headers="a5.-Parametric-regression-models  example" class="gt_row gt_right">5.4</td>
<td headers="a5.-Parametric-regression-models  alias" class="gt_row gt_left">d5.4</td>
<td headers="a5.-Parametric-regression-models  dataset" class="gt_row gt_left">iud</td>
<td headers="a5.-Parametric-regression-models  n_rows" class="gt_row gt_right">18</td>
<td headers="a5.-Parametric-regression-models  n_variables" class="gt_row gt_right">2</td></tr>
    <tr><td headers="a5.-Parametric-regression-models  example" class="gt_row gt_right">5.5</td>
<td headers="a5.-Parametric-regression-models  alias" class="gt_row gt_left">d5.5</td>
<td headers="a5.-Parametric-regression-models  dataset" class="gt_row gt_left">breast</td>
<td headers="a5.-Parametric-regression-models  n_rows" class="gt_row gt_right">45</td>
<td headers="a5.-Parametric-regression-models  n_variables" class="gt_row gt_right">3</td></tr>
    <tr><td headers="a5.-Parametric-regression-models  example" class="gt_row gt_right">5.6</td>
<td headers="a5.-Parametric-regression-models  alias" class="gt_row gt_left">d5.6</td>
<td headers="a5.-Parametric-regression-models  dataset" class="gt_row gt_left">breast</td>
<td headers="a5.-Parametric-regression-models  n_rows" class="gt_row gt_right">45</td>
<td headers="a5.-Parametric-regression-models  n_variables" class="gt_row gt_right">3</td></tr>
    <tr><td headers="a5.-Parametric-regression-models  example" class="gt_row gt_right">5.7</td>
<td headers="a5.-Parametric-regression-models  alias" class="gt_row gt_left">d5.7</td>
<td headers="a5.-Parametric-regression-models  dataset" class="gt_row gt_left">breast</td>
<td headers="a5.-Parametric-regression-models  n_rows" class="gt_row gt_right">45</td>
<td headers="a5.-Parametric-regression-models  n_variables" class="gt_row gt_right">3</td></tr>
    <tr><td headers="a5.-Parametric-regression-models  example" class="gt_row gt_right">5.8</td>
<td headers="a5.-Parametric-regression-models  alias" class="gt_row gt_left">d5.8</td>
<td headers="a5.-Parametric-regression-models  dataset" class="gt_row gt_left">breast</td>
<td headers="a5.-Parametric-regression-models  n_rows" class="gt_row gt_right">45</td>
<td headers="a5.-Parametric-regression-models  n_variables" class="gt_row gt_right">3</td></tr>
    <tr><td headers="a5.-Parametric-regression-models  example" class="gt_row gt_right">5.9</td>
<td headers="a5.-Parametric-regression-models  alias" class="gt_row gt_left">d5.9</td>
<td headers="a5.-Parametric-regression-models  dataset" class="gt_row gt_left">numerical_illustration</td>
<td headers="a5.-Parametric-regression-models  n_rows" class="gt_row gt_right">37</td>
<td headers="a5.-Parametric-regression-models  n_variables" class="gt_row gt_right">4</td></tr>
    <tr><td headers="a5.-Parametric-regression-models  example" class="gt_row gt_right">5.10</td>
<td headers="a5.-Parametric-regression-models  alias" class="gt_row gt_left">d5.10</td>
<td headers="a5.-Parametric-regression-models  dataset" class="gt_row gt_left">hyper</td>
<td headers="a5.-Parametric-regression-models  n_rows" class="gt_row gt_right">36</td>
<td headers="a5.-Parametric-regression-models  n_variables" class="gt_row gt_right">4</td></tr>
    <tr><td headers="a5.-Parametric-regression-models  example" class="gt_row gt_right">5.11</td>
<td headers="a5.-Parametric-regression-models  alias" class="gt_row gt_left">d5.11</td>
<td headers="a5.-Parametric-regression-models  dataset" class="gt_row gt_left">ovarian</td>
<td headers="a5.-Parametric-regression-models  n_rows" class="gt_row gt_right">26</td>
<td headers="a5.-Parametric-regression-models  n_variables" class="gt_row gt_right">7</td></tr>
    <tr><td headers="a5.-Parametric-regression-models  example" class="gt_row gt_right">5.12</td>
<td headers="a5.-Parametric-regression-models  alias" class="gt_row gt_left">d5.12</td>
<td headers="a5.-Parametric-regression-models  dataset" class="gt_row gt_left">ovarian</td>
<td headers="a5.-Parametric-regression-models  n_rows" class="gt_row gt_right">26</td>
<td headers="a5.-Parametric-regression-models  n_variables" class="gt_row gt_right">7</td></tr>
    <tr><td headers="a5.-Parametric-regression-models  example" class="gt_row gt_right">5.13</td>
<td headers="a5.-Parametric-regression-models  alias" class="gt_row gt_left">d5.13</td>
<td headers="a5.-Parametric-regression-models  dataset" class="gt_row gt_left">breast</td>
<td headers="a5.-Parametric-regression-models  n_rows" class="gt_row gt_right">45</td>
<td headers="a5.-Parametric-regression-models  n_variables" class="gt_row gt_right">3</td></tr>
    <tr><td headers="a5.-Parametric-regression-models  example" class="gt_row gt_right">5.14</td>
<td headers="a5.-Parametric-regression-models  alias" class="gt_row gt_left">d5.14</td>
<td headers="a5.-Parametric-regression-models  dataset" class="gt_row gt_left">breast</td>
<td headers="a5.-Parametric-regression-models  n_rows" class="gt_row gt_right">45</td>
<td headers="a5.-Parametric-regression-models  n_variables" class="gt_row gt_right">3</td></tr>
    <tr><td headers="a5.-Parametric-regression-models  example" class="gt_row gt_right">5.15</td>
<td headers="a5.-Parametric-regression-models  alias" class="gt_row gt_left">d5.15</td>
<td headers="a5.-Parametric-regression-models  dataset" class="gt_row gt_left">prostate</td>
<td headers="a5.-Parametric-regression-models  n_rows" class="gt_row gt_right">38</td>
<td headers="a5.-Parametric-regression-models  n_variables" class="gt_row gt_right">8</td></tr>
    <tr><td headers="a5.-Parametric-regression-models  example" class="gt_row gt_right">5.16</td>
<td headers="a5.-Parametric-regression-models  alias" class="gt_row gt_left">d5.16</td>
<td headers="a5.-Parametric-regression-models  dataset" class="gt_row gt_left">myeloma</td>
<td headers="a5.-Parametric-regression-models  n_rows" class="gt_row gt_right">48</td>
<td headers="a5.-Parametric-regression-models  n_variables" class="gt_row gt_right">10</td></tr>
    <tr><td headers="a5.-Parametric-regression-models  example" class="gt_row gt_right">5.17</td>
<td headers="a5.-Parametric-regression-models  alias" class="gt_row gt_left">d5.17</td>
<td headers="a5.-Parametric-regression-models  dataset" class="gt_row gt_left">breast</td>
<td headers="a5.-Parametric-regression-models  n_rows" class="gt_row gt_right">45</td>
<td headers="a5.-Parametric-regression-models  n_variables" class="gt_row gt_right">3</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="5" class="gt_group_heading" scope="colgroup" id="a6.-Flexible-parametric-models">6. Flexible parametric models</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="a6.-Flexible-parametric-models  example" class="gt_row gt_right">6.1</td>
<td headers="a6.-Flexible-parametric-models  alias" class="gt_row gt_left">d6.1</td>
<td headers="a6.-Flexible-parametric-models  dataset" class="gt_row gt_left">hyper</td>
<td headers="a6.-Flexible-parametric-models  n_rows" class="gt_row gt_right">36</td>
<td headers="a6.-Flexible-parametric-models  n_variables" class="gt_row gt_right">4</td></tr>
    <tr><td headers="a6.-Flexible-parametric-models  example" class="gt_row gt_right">6.4</td>
<td headers="a6.-Flexible-parametric-models  alias" class="gt_row gt_left">d6.4</td>
<td headers="a6.-Flexible-parametric-models  dataset" class="gt_row gt_left">hyper</td>
<td headers="a6.-Flexible-parametric-models  n_rows" class="gt_row gt_right">36</td>
<td headers="a6.-Flexible-parametric-models  n_variables" class="gt_row gt_right">4</td></tr>
    <tr><td headers="a6.-Flexible-parametric-models  example" class="gt_row gt_right">6.5</td>
<td headers="a6.-Flexible-parametric-models  alias" class="gt_row gt_left">d6.5</td>
<td headers="a6.-Flexible-parametric-models  dataset" class="gt_row gt_left">breast_rfs</td>
<td headers="a6.-Flexible-parametric-models  n_rows" class="gt_row gt_right">686</td>
<td headers="a6.-Flexible-parametric-models  n_variables" class="gt_row gt_right">11</td></tr>
    <tr><td headers="a6.-Flexible-parametric-models  example" class="gt_row gt_right">6.6</td>
<td headers="a6.-Flexible-parametric-models  alias" class="gt_row gt_left">d6.6</td>
<td headers="a6.-Flexible-parametric-models  dataset" class="gt_row gt_left">breast_rfs</td>
<td headers="a6.-Flexible-parametric-models  n_rows" class="gt_row gt_right">686</td>
<td headers="a6.-Flexible-parametric-models  n_variables" class="gt_row gt_right">11</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="5" class="gt_group_heading" scope="colgroup" id="a7.-Model-checking-in-parametric-models">7. Model checking in parametric models</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="a7.-Model-checking-in-parametric-models  example" class="gt_row gt_right">7.1</td>
<td headers="a7.-Model-checking-in-parametric-models  alias" class="gt_row gt_left">d7.1</td>
<td headers="a7.-Model-checking-in-parametric-models  dataset" class="gt_row gt_left">ovarian</td>
<td headers="a7.-Model-checking-in-parametric-models  n_rows" class="gt_row gt_right">26</td>
<td headers="a7.-Model-checking-in-parametric-models  n_variables" class="gt_row gt_right">7</td></tr>
    <tr><td headers="a7.-Model-checking-in-parametric-models  example" class="gt_row gt_right">7.2</td>
<td headers="a7.-Model-checking-in-parametric-models  alias" class="gt_row gt_left">d7.2</td>
<td headers="a7.-Model-checking-in-parametric-models  dataset" class="gt_row gt_left">ovarian</td>
<td headers="a7.-Model-checking-in-parametric-models  n_rows" class="gt_row gt_right">26</td>
<td headers="a7.-Model-checking-in-parametric-models  n_variables" class="gt_row gt_right">7</td></tr>
    <tr><td headers="a7.-Model-checking-in-parametric-models  example" class="gt_row gt_right">7.3</td>
<td headers="a7.-Model-checking-in-parametric-models  alias" class="gt_row gt_left">d7.3</td>
<td headers="a7.-Model-checking-in-parametric-models  dataset" class="gt_row gt_left">ovarian</td>
<td headers="a7.-Model-checking-in-parametric-models  n_rows" class="gt_row gt_right">26</td>
<td headers="a7.-Model-checking-in-parametric-models  n_variables" class="gt_row gt_right">7</td></tr>
    <tr><td headers="a7.-Model-checking-in-parametric-models  example" class="gt_row gt_right">7.4</td>
<td headers="a7.-Model-checking-in-parametric-models  alias" class="gt_row gt_left">d7.4</td>
<td headers="a7.-Model-checking-in-parametric-models  dataset" class="gt_row gt_left">ovarian</td>
<td headers="a7.-Model-checking-in-parametric-models  n_rows" class="gt_row gt_right">26</td>
<td headers="a7.-Model-checking-in-parametric-models  n_variables" class="gt_row gt_right">7</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="5" class="gt_group_heading" scope="colgroup" id="a8.-Time-dependent-variables">8. Time-dependent variables</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="a8.-Time-dependent-variables  example" class="gt_row gt_right">8.2</td>
<td headers="a8.-Time-dependent-variables  alias" class="gt_row gt_left">d8.2</td>
<td headers="a8.-Time-dependent-variables  dataset" class="gt_row gt_left">bmt_leukaemia</td>
<td headers="a8.-Time-dependent-variables  n_rows" class="gt_row gt_right">23</td>
<td headers="a8.-Time-dependent-variables  n_variables" class="gt_row gt_right">8</td></tr>
    <tr><td headers="a8.-Time-dependent-variables  example" class="gt_row gt_right">8.3</td>
<td headers="a8.-Time-dependent-variables  alias" class="gt_row gt_left">d8.3</td>
<td headers="a8.-Time-dependent-variables  dataset" class="gt_row gt_left">ovarian</td>
<td headers="a8.-Time-dependent-variables  n_rows" class="gt_row gt_right">26</td>
<td headers="a8.-Time-dependent-variables  n_variables" class="gt_row gt_right">7</td></tr>
    <tr><td headers="a8.-Time-dependent-variables  example" class="gt_row gt_right">8.4</td>
<td headers="a8.-Time-dependent-variables  alias" class="gt_row gt_left">d8.4</td>
<td headers="a8.-Time-dependent-variables  dataset" class="gt_row gt_left">cirrhosis</td>
<td headers="a8.-Time-dependent-variables  n_rows" class="gt_row gt_right">12</td>
<td headers="a8.-Time-dependent-variables  n_variables" class="gt_row gt_right">6</td></tr>
    <tr><td headers="a8.-Time-dependent-variables  example" class="gt_row gt_right">8.4</td>
<td headers="a8.-Time-dependent-variables  alias" class="gt_row gt_left">NA</td>
<td headers="a8.-Time-dependent-variables  dataset" class="gt_row gt_left">cirrhosis_cp</td>
<td headers="a8.-Time-dependent-variables  n_rows" class="gt_row gt_right">54</td>
<td headers="a8.-Time-dependent-variables  n_variables" class="gt_row gt_right">7</td></tr>
    <tr><td headers="a8.-Time-dependent-variables  example" class="gt_row gt_right">8.4</td>
<td headers="a8.-Time-dependent-variables  alias" class="gt_row gt_left">NA</td>
<td headers="a8.-Time-dependent-variables  dataset" class="gt_row gt_left">cirrhosis_lbr</td>
<td headers="a8.-Time-dependent-variables  n_rows" class="gt_row gt_right">42</td>
<td headers="a8.-Time-dependent-variables  n_variables" class="gt_row gt_right">3</td></tr>
    <tr><td headers="a8.-Time-dependent-variables  example" class="gt_row gt_right">8.5</td>
<td headers="a8.-Time-dependent-variables  alias" class="gt_row gt_left">d8.5</td>
<td headers="a8.-Time-dependent-variables  dataset" class="gt_row gt_left">aortic</td>
<td headers="a8.-Time-dependent-variables  n_rows" class="gt_row gt_right">988</td>
<td headers="a8.-Time-dependent-variables  n_variables" class="gt_row gt_right">11</td></tr>
    <tr><td headers="a8.-Time-dependent-variables  example" class="gt_row gt_right">8.6</td>
<td headers="a8.-Time-dependent-variables  alias" class="gt_row gt_left">d8.6</td>
<td headers="a8.-Time-dependent-variables  dataset" class="gt_row gt_left">aortic</td>
<td headers="a8.-Time-dependent-variables  n_rows" class="gt_row gt_right">988</td>
<td headers="a8.-Time-dependent-variables  n_variables" class="gt_row gt_right">11</td></tr>
    <tr><td headers="a8.-Time-dependent-variables  example" class="gt_row gt_right">8.7</td>
<td headers="a8.-Time-dependent-variables  alias" class="gt_row gt_left">d8.7</td>
<td headers="a8.-Time-dependent-variables  dataset" class="gt_row gt_left">aortic</td>
<td headers="a8.-Time-dependent-variables  n_rows" class="gt_row gt_right">988</td>
<td headers="a8.-Time-dependent-variables  n_variables" class="gt_row gt_right">11</td></tr>
    <tr><td headers="a8.-Time-dependent-variables  example" class="gt_row gt_right">8.8</td>
<td headers="a8.-Time-dependent-variables  alias" class="gt_row gt_left">d8.8</td>
<td headers="a8.-Time-dependent-variables  dataset" class="gt_row gt_left">aortic</td>
<td headers="a8.-Time-dependent-variables  n_rows" class="gt_row gt_right">988</td>
<td headers="a8.-Time-dependent-variables  n_variables" class="gt_row gt_right">11</td></tr>
    <tr><td headers="a8.-Time-dependent-variables  example" class="gt_row gt_right">8.9</td>
<td headers="a8.-Time-dependent-variables  alias" class="gt_row gt_left">d8.9</td>
<td headers="a8.-Time-dependent-variables  dataset" class="gt_row gt_left">aortic</td>
<td headers="a8.-Time-dependent-variables  n_rows" class="gt_row gt_right">988</td>
<td headers="a8.-Time-dependent-variables  n_variables" class="gt_row gt_right">11</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="5" class="gt_group_heading" scope="colgroup" id="a9.-Interval-censored-survival-data">9. Interval-censored survival data</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="a9.-Interval-censored-survival-data  example" class="gt_row gt_right">9.1</td>
<td headers="a9.-Interval-censored-survival-data  alias" class="gt_row gt_left">d9.1</td>
<td headers="a9.-Interval-censored-survival-data  dataset" class="gt_row gt_left">ulcer</td>
<td headers="a9.-Interval-censored-survival-data  n_rows" class="gt_row gt_right">43</td>
<td headers="a9.-Interval-censored-survival-data  n_variables" class="gt_row gt_right">6</td></tr>
    <tr><td headers="a9.-Interval-censored-survival-data  example" class="gt_row gt_right">9.4</td>
<td headers="a9.-Interval-censored-survival-data  alias" class="gt_row gt_left">d9.4</td>
<td headers="a9.-Interval-censored-survival-data  dataset" class="gt_row gt_left">ulcer</td>
<td headers="a9.-Interval-censored-survival-data  n_rows" class="gt_row gt_right">43</td>
<td headers="a9.-Interval-censored-survival-data  n_variables" class="gt_row gt_right">6</td></tr>
    <tr><td headers="a9.-Interval-censored-survival-data  example" class="gt_row gt_right">9.5</td>
<td headers="a9.-Interval-censored-survival-data  alias" class="gt_row gt_left">d9.5</td>
<td headers="a9.-Interval-censored-survival-data  dataset" class="gt_row gt_left">ulcer</td>
<td headers="a9.-Interval-censored-survival-data  n_rows" class="gt_row gt_right">43</td>
<td headers="a9.-Interval-censored-survival-data  n_variables" class="gt_row gt_right">6</td></tr>
    <tr><td headers="a9.-Interval-censored-survival-data  example" class="gt_row gt_right">9.6</td>
<td headers="a9.-Interval-censored-survival-data  alias" class="gt_row gt_left">d9.6</td>
<td headers="a9.-Interval-censored-survival-data  dataset" class="gt_row gt_left">ulcer</td>
<td headers="a9.-Interval-censored-survival-data  n_rows" class="gt_row gt_right">43</td>
<td headers="a9.-Interval-censored-survival-data  n_variables" class="gt_row gt_right">6</td></tr>
    <tr><td headers="a9.-Interval-censored-survival-data  example" class="gt_row gt_right">9.7</td>
<td headers="a9.-Interval-censored-survival-data  alias" class="gt_row gt_left">d9.7</td>
<td headers="a9.-Interval-censored-survival-data  dataset" class="gt_row gt_left">ulcer</td>
<td headers="a9.-Interval-censored-survival-data  n_rows" class="gt_row gt_right">43</td>
<td headers="a9.-Interval-censored-survival-data  n_variables" class="gt_row gt_right">6</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="5" class="gt_group_heading" scope="colgroup" id="a10.-Frailty-models">10. Frailty models</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="a10.-Frailty-models  example" class="gt_row gt_right">10.1</td>
<td headers="a10.-Frailty-models  alias" class="gt_row gt_left">d10.1</td>
<td headers="a10.-Frailty-models  dataset" class="gt_row gt_left">breast</td>
<td headers="a10.-Frailty-models  n_rows" class="gt_row gt_right">45</td>
<td headers="a10.-Frailty-models  n_variables" class="gt_row gt_right">3</td></tr>
    <tr><td headers="a10.-Frailty-models  example" class="gt_row gt_right">10.2</td>
<td headers="a10.-Frailty-models  alias" class="gt_row gt_left">d10.2</td>
<td headers="a10.-Frailty-models  dataset" class="gt_row gt_left">breast</td>
<td headers="a10.-Frailty-models  n_rows" class="gt_row gt_right">45</td>
<td headers="a10.-Frailty-models  n_variables" class="gt_row gt_right">3</td></tr>
    <tr><td headers="a10.-Frailty-models  example" class="gt_row gt_right">10.3</td>
<td headers="a10.-Frailty-models  alias" class="gt_row gt_left">d10.3</td>
<td headers="a10.-Frailty-models  dataset" class="gt_row gt_left">lung_transplant</td>
<td headers="a10.-Frailty-models  n_rows" class="gt_row gt_right">196</td>
<td headers="a10.-Frailty-models  n_variables" class="gt_row gt_right">7</td></tr>
    <tr><td headers="a10.-Frailty-models  example" class="gt_row gt_right">10.4</td>
<td headers="a10.-Frailty-models  alias" class="gt_row gt_left">d10.4</td>
<td headers="a10.-Frailty-models  dataset" class="gt_row gt_left">kidney</td>
<td headers="a10.-Frailty-models  n_rows" class="gt_row gt_right">434</td>
<td headers="a10.-Frailty-models  n_variables" class="gt_row gt_right">7</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="5" class="gt_group_heading" scope="colgroup" id="a11.-Non-proportional-hazards-and-institutional-comparisons">11. Non-proportional hazards and institutional comparisons</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  example" class="gt_row gt_right">11.1</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  alias" class="gt_row gt_left">d11.1</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  dataset" class="gt_row gt_left">ulcer</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  n_rows" class="gt_row gt_right">43</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  n_variables" class="gt_row gt_right">6</td></tr>
    <tr><td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  example" class="gt_row gt_right">11.2</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  alias" class="gt_row gt_left">d11.2</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  dataset" class="gt_row gt_left">gastric</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  n_rows" class="gt_row gt_right">90</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  n_variables" class="gt_row gt_right">4</td></tr>
    <tr><td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  example" class="gt_row gt_right">11.3</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  alias" class="gt_row gt_left">d11.3</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  dataset" class="gt_row gt_left">gastric</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  n_rows" class="gt_row gt_right">90</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  n_variables" class="gt_row gt_right">4</td></tr>
    <tr><td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  example" class="gt_row gt_right">11.4</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  alias" class="gt_row gt_left">d11.4</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  dataset" class="gt_row gt_left">kidney_centres</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  n_rows" class="gt_row gt_right">1439</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  n_variables" class="gt_row gt_right">9</td></tr>
    <tr><td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  example" class="gt_row gt_right">11.5</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  alias" class="gt_row gt_left">d11.5</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  dataset" class="gt_row gt_left">kidney_centres</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  n_rows" class="gt_row gt_right">1439</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  n_variables" class="gt_row gt_right">9</td></tr>
    <tr><td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  example" class="gt_row gt_right">11.6</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  alias" class="gt_row gt_left">d11.6</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  dataset" class="gt_row gt_left">kidney_centres</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  n_rows" class="gt_row gt_right">1439</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  n_variables" class="gt_row gt_right">9</td></tr>
    <tr><td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  example" class="gt_row gt_right">11.7</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  alias" class="gt_row gt_left">d11.7</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  dataset" class="gt_row gt_left">kidney_centres</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  n_rows" class="gt_row gt_right">1439</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  n_variables" class="gt_row gt_right">9</td></tr>
    <tr><td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  example" class="gt_row gt_right">11.8</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  alias" class="gt_row gt_left">d11.8</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  dataset" class="gt_row gt_left">kidney_centres</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  n_rows" class="gt_row gt_right">1439</td>
<td headers="a11.-Non-proportional-hazards-and-institutional-comparisons  n_variables" class="gt_row gt_right">9</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="5" class="gt_group_heading" scope="colgroup" id="a12.-Competing-risks">12. Competing risks</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="a12.-Competing-risks  example" class="gt_row gt_right">12.1</td>
<td headers="a12.-Competing-risks  alias" class="gt_row gt_left">d12.1</td>
<td headers="a12.-Competing-risks  dataset" class="gt_row gt_left">liver</td>
<td headers="a12.-Competing-risks  n_rows" class="gt_row gt_right">1761</td>
<td headers="a12.-Competing-risks  n_variables" class="gt_row gt_right">7</td></tr>
    <tr><td headers="a12.-Competing-risks  example" class="gt_row gt_right">12.2</td>
<td headers="a12.-Competing-risks  alias" class="gt_row gt_left">d12.2</td>
<td headers="a12.-Competing-risks  dataset" class="gt_row gt_left">liver</td>
<td headers="a12.-Competing-risks  n_rows" class="gt_row gt_right">1761</td>
<td headers="a12.-Competing-risks  n_variables" class="gt_row gt_right">7</td></tr>
    <tr><td headers="a12.-Competing-risks  example" class="gt_row gt_right">12.3</td>
<td headers="a12.-Competing-risks  alias" class="gt_row gt_left">d12.3</td>
<td headers="a12.-Competing-risks  dataset" class="gt_row gt_left">liver</td>
<td headers="a12.-Competing-risks  n_rows" class="gt_row gt_right">1761</td>
<td headers="a12.-Competing-risks  n_variables" class="gt_row gt_right">7</td></tr>
    <tr><td headers="a12.-Competing-risks  example" class="gt_row gt_right">12.4</td>
<td headers="a12.-Competing-risks  alias" class="gt_row gt_left">d12.4</td>
<td headers="a12.-Competing-risks  dataset" class="gt_row gt_left">liver</td>
<td headers="a12.-Competing-risks  n_rows" class="gt_row gt_right">1761</td>
<td headers="a12.-Competing-risks  n_variables" class="gt_row gt_right">7</td></tr>
    <tr><td headers="a12.-Competing-risks  example" class="gt_row gt_right">12.5</td>
<td headers="a12.-Competing-risks  alias" class="gt_row gt_left">d12.5</td>
<td headers="a12.-Competing-risks  dataset" class="gt_row gt_left">liver</td>
<td headers="a12.-Competing-risks  n_rows" class="gt_row gt_right">1761</td>
<td headers="a12.-Competing-risks  n_variables" class="gt_row gt_right">7</td></tr>
    <tr><td headers="a12.-Competing-risks  example" class="gt_row gt_right">12.6</td>
<td headers="a12.-Competing-risks  alias" class="gt_row gt_left">d12.6</td>
<td headers="a12.-Competing-risks  dataset" class="gt_row gt_left">liver</td>
<td headers="a12.-Competing-risks  n_rows" class="gt_row gt_right">1761</td>
<td headers="a12.-Competing-risks  n_variables" class="gt_row gt_right">7</td></tr>
    <tr><td headers="a12.-Competing-risks  example" class="gt_row gt_right">12.7</td>
<td headers="a12.-Competing-risks  alias" class="gt_row gt_left">d12.7</td>
<td headers="a12.-Competing-risks  dataset" class="gt_row gt_left">mice</td>
<td headers="a12.-Competing-risks  n_rows" class="gt_row gt_right">181</td>
<td headers="a12.-Competing-risks  n_variables" class="gt_row gt_right">3</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="5" class="gt_group_heading" scope="colgroup" id="a13.-Multiple-events-and-event-history-modelling">13. Multiple events and event history modelling</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="a13.-Multiple-events-and-event-history-modelling  example" class="gt_row gt_right">13.2</td>
<td headers="a13.-Multiple-events-and-event-history-modelling  alias" class="gt_row gt_left">d13.2</td>
<td headers="a13.-Multiple-events-and-event-history-modelling  dataset" class="gt_row gt_left">rats</td>
<td headers="a13.-Multiple-events-and-event-history-modelling  n_rows" class="gt_row gt_right">254</td>
<td headers="a13.-Multiple-events-and-event-history-modelling  n_variables" class="gt_row gt_right">4</td></tr>
    <tr><td headers="a13.-Multiple-events-and-event-history-modelling  example" class="gt_row gt_right">13.3</td>
<td headers="a13.-Multiple-events-and-event-history-modelling  alias" class="gt_row gt_left">d13.3</td>
<td headers="a13.-Multiple-events-and-event-history-modelling  dataset" class="gt_row gt_left">tamoxifen</td>
<td headers="a13.-Multiple-events-and-event-history-modelling  n_rows" class="gt_row gt_right">641</td>
<td headers="a13.-Multiple-events-and-event-history-modelling  n_variables" class="gt_row gt_right">18</td></tr>
    <tr><td headers="a13.-Multiple-events-and-event-history-modelling  example" class="gt_row gt_right">13.4</td>
<td headers="a13.-Multiple-events-and-event-history-modelling  alias" class="gt_row gt_left">d13.4</td>
<td headers="a13.-Multiple-events-and-event-history-modelling  dataset" class="gt_row gt_left">bmt_outcome</td>
<td headers="a13.-Multiple-events-and-event-history-modelling  n_rows" class="gt_row gt_right">2204</td>
<td headers="a13.-Multiple-events-and-event-history-modelling  n_variables" class="gt_row gt_right">9</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="5" class="gt_group_heading" scope="colgroup" id="a14.-Dependent-censoring">14. Dependent censoring</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="a14.-Dependent-censoring  example" class="gt_row gt_right">14.1</td>
<td headers="a14.-Dependent-censoring  alias" class="gt_row gt_left">d14.1</td>
<td headers="a14.-Dependent-censoring  dataset" class="gt_row gt_left">liver_wait</td>
<td headers="a14.-Dependent-censoring  n_rows" class="gt_row gt_right">281</td>
<td headers="a14.-Dependent-censoring  n_variables" class="gt_row gt_right">7</td></tr>
    <tr><td headers="a14.-Dependent-censoring  example" class="gt_row gt_right">14.3</td>
<td headers="a14.-Dependent-censoring  alias" class="gt_row gt_left">d14.3</td>
<td headers="a14.-Dependent-censoring  dataset" class="gt_row gt_left">liver_wait</td>
<td headers="a14.-Dependent-censoring  n_rows" class="gt_row gt_right">281</td>
<td headers="a14.-Dependent-censoring  n_variables" class="gt_row gt_right">7</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="5" class="gt_group_heading" scope="colgroup" id="a15.-Sample-size-requirements-for-a-survival-study">15. Sample size requirements for a survival study</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="a15.-Sample-size-requirements-for-a-survival-study  example" class="gt_row gt_right">15.1</td>
<td headers="a15.-Sample-size-requirements-for-a-survival-study  alias" class="gt_row gt_left">d15.1</td>
<td headers="a15.-Sample-size-requirements-for-a-survival-study  dataset" class="gt_row gt_left">hepatitis</td>
<td headers="a15.-Sample-size-requirements-for-a-survival-study  n_rows" class="gt_row gt_right">44</td>
<td headers="a15.-Sample-size-requirements-for-a-survival-study  n_variables" class="gt_row gt_right">3</td></tr>
    <tr><td headers="a15.-Sample-size-requirements-for-a-survival-study  example" class="gt_row gt_right">15.2</td>
<td headers="a15.-Sample-size-requirements-for-a-survival-study  alias" class="gt_row gt_left">d15.2</td>
<td headers="a15.-Sample-size-requirements-for-a-survival-study  dataset" class="gt_row gt_left">hepatitis</td>
<td headers="a15.-Sample-size-requirements-for-a-survival-study  n_rows" class="gt_row gt_right">44</td>
<td headers="a15.-Sample-size-requirements-for-a-survival-study  n_variables" class="gt_row gt_right">3</td></tr>
    <tr><td headers="a15.-Sample-size-requirements-for-a-survival-study  example" class="gt_row gt_right">15.3</td>
<td headers="a15.-Sample-size-requirements-for-a-survival-study  alias" class="gt_row gt_left">d15.3</td>
<td headers="a15.-Sample-size-requirements-for-a-survival-study  dataset" class="gt_row gt_left">hepatitis</td>
<td headers="a15.-Sample-size-requirements-for-a-survival-study  n_rows" class="gt_row gt_right">44</td>
<td headers="a15.-Sample-size-requirements-for-a-survival-study  n_variables" class="gt_row gt_right">3</td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="5" class="gt_group_heading" scope="colgroup" id="a16.-Bayesian-survival-analysis">16. Bayesian survival analysis</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="a16.-Bayesian-survival-analysis  example" class="gt_row gt_right">16.1</td>
<td headers="a16.-Bayesian-survival-analysis  alias" class="gt_row gt_left">d16.1</td>
<td headers="a16.-Bayesian-survival-analysis  dataset" class="gt_row gt_left">iud</td>
<td headers="a16.-Bayesian-survival-analysis  n_rows" class="gt_row gt_right">18</td>
<td headers="a16.-Bayesian-survival-analysis  n_variables" class="gt_row gt_right">2</td></tr>
    <tr><td headers="a16.-Bayesian-survival-analysis  example" class="gt_row gt_right">16.2</td>
<td headers="a16.-Bayesian-survival-analysis  alias" class="gt_row gt_left">d16.2</td>
<td headers="a16.-Bayesian-survival-analysis  dataset" class="gt_row gt_left">iud</td>
<td headers="a16.-Bayesian-survival-analysis  n_rows" class="gt_row gt_right">18</td>
<td headers="a16.-Bayesian-survival-analysis  n_variables" class="gt_row gt_right">2</td></tr>
    <tr><td headers="a16.-Bayesian-survival-analysis  example" class="gt_row gt_right">16.3</td>
<td headers="a16.-Bayesian-survival-analysis  alias" class="gt_row gt_left">d16.3</td>
<td headers="a16.-Bayesian-survival-analysis  dataset" class="gt_row gt_left">iud</td>
<td headers="a16.-Bayesian-survival-analysis  n_rows" class="gt_row gt_right">18</td>
<td headers="a16.-Bayesian-survival-analysis  n_variables" class="gt_row gt_right">2</td></tr>
    <tr><td headers="a16.-Bayesian-survival-analysis  example" class="gt_row gt_right">16.4</td>
<td headers="a16.-Bayesian-survival-analysis  alias" class="gt_row gt_left">d16.4</td>
<td headers="a16.-Bayesian-survival-analysis  dataset" class="gt_row gt_left">breast</td>
<td headers="a16.-Bayesian-survival-analysis  n_rows" class="gt_row gt_right">45</td>
<td headers="a16.-Bayesian-survival-analysis  n_variables" class="gt_row gt_right">3</td></tr>
    <tr><td headers="a16.-Bayesian-survival-analysis  example" class="gt_row gt_right">16.5</td>
<td headers="a16.-Bayesian-survival-analysis  alias" class="gt_row gt_left">d16.5</td>
<td headers="a16.-Bayesian-survival-analysis  dataset" class="gt_row gt_left">breast</td>
<td headers="a16.-Bayesian-survival-analysis  n_rows" class="gt_row gt_right">45</td>
<td headers="a16.-Bayesian-survival-analysis  n_variables" class="gt_row gt_right">3</td></tr>
    <tr><td headers="a16.-Bayesian-survival-analysis  example" class="gt_row gt_right">16.6</td>
<td headers="a16.-Bayesian-survival-analysis  alias" class="gt_row gt_left">d16.6</td>
<td headers="a16.-Bayesian-survival-analysis  dataset" class="gt_row gt_left">breast</td>
<td headers="a16.-Bayesian-survival-analysis  n_rows" class="gt_row gt_right">45</td>
<td headers="a16.-Bayesian-survival-analysis  n_variables" class="gt_row gt_right">3</td></tr>
    <tr><td headers="a16.-Bayesian-survival-analysis  example" class="gt_row gt_right">16.7</td>
<td headers="a16.-Bayesian-survival-analysis  alias" class="gt_row gt_left">d16.7</td>
<td headers="a16.-Bayesian-survival-analysis  dataset" class="gt_row gt_left">help</td>
<td headers="a16.-Bayesian-survival-analysis  n_rows" class="gt_row gt_right">447</td>
<td headers="a16.-Bayesian-survival-analysis  n_variables" class="gt_row gt_right">7</td></tr>
  </tbody>
  &#10;</table>
</div>

## Computer exercises

The course exercises are shipped as vignettes. The first exercise covers
censoring, the survivor and hazard functions, Kaplan–Meier, Nelson–Aalen
and the log-rank family:

``` r
vignette("cs1-survival-data")
vignette("cs1-solutions")
```
