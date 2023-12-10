#' @title Violin Plot Exploring Statistics of Weight and Sex
#' @description  Plot a violin plot showing summary satistics of weight value
#' grouped by sex.
#' @param adsl the dataset.
#' @return Violin plot including summary stats.
#' @importFrom ggplot2  ggplot geom_violin geom_boxplot theme_classic aes
#' @importFrom dplyr select
#' @export
summary_weight_sex <- function(adsl) {
  data <- adsl |> select(SEX, B_WEIGHT)
  ggplot(data, aes(x = SEX, y = B_WEIGHT, color = SEX)) +
    geom_violin() +
    geom_boxplot(width = 0.1) +
    theme_classic()
}
