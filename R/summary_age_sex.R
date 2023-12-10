#' @title Violin Plot Exploring Statistics of Age and Sex
#' @description  Plot a violin plot showing summary satistics of age value
#' grouped by sex.
#' @param adsl the dataset.
#' @return Violin plot including summary stats.
#' @importFrom ggplot2 geom_violin geom_boxplot theme_classic aes
#' @importFrom dplyr select
#' @export
summary_age_sex <- function(adsl) {
  data <- adsl |> select(AGE, SEX)
  ggplot(data, aes(x = SEX, y = AGE, color = SEX)) +
    geom_violin() +
    geom_boxplot(width = 0.1) +
    theme_classic()
}
