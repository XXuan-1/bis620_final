#' @title Violin Plot Exploring Statistics of Age and Treatment
#' @description  Plot a violin plot showing summary satistics of age value
#' grouped by treatment.
#' @param adsl the dataset.
#' @return Violin plot including summary stats.
#' @importFrom ggplot2 geom_violin geom_boxplot theme_classic
#' @importFrom dplyr select
#' @export
summary_age_trt <- function(adsl) {
  data <- adsl |> select(AGE, ATRT)
  ggplot(data, aes(x = ATRT, y = AGE, color = ATRT)) +
    geom_violin() +
    geom_boxplot(width = 0.1) +
    theme_classic()
}
