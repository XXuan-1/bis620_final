#' @title Logistic Regression Analysis
#' @description  Logistic Regression Model for ECOG Performance Status with
#' Treatment after adjusting for confounders
#' @param adsl the dataset.
#' @param variables ATRT and certian confounders (among SEX, B_WEIGHT, and AGE)
#' used in analysis
#' @return Regression analytical statistics.
#' @importFrom nnet multinom
#' @importFrom stats pnorm as.formula
#' @export
analysis <- function(variables, adsl) {
  formula <- as.formula(
    paste('B_ECOG',
          paste('ATRT +', variables, collapse = " + "),
          sep = " ~ "))
  model <- multinom(formula, data = adsl)
  summary_model <- summary(model)
  z_values <- summary_model$coefficients[1,2] /
    summary_model$standard.errors[1,2]
  p_values <- 2 * (1 - pnorm(abs(z_values)))
  print(summary_model)
  print("p_value:")
  print(p_values)
}
