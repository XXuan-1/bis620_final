#' @title Summary Table for all required variables
#' @description  A table including frequency table for categorical
#' variables and summary for continuous variables.
#' @param adsl the dataset.
#' @return A summary table.
#' @importFrom gtsummary tbl_summary
#' @importFrom dplyr select
#' @export
summary_tbl <- function(adsl) {
  adsl |>
    select(AGE, B_WEIGHT, B_ECOG, SEX, ATRT) |>
    tbl_summary(by = ATRT)
}

