#' @title Violin Plot Exploring Statistics of Weight and Treatment
#' @description  Plot a violin plot showing summary satistics of age value
#' grouped by treatment.
#' @param adsl the dataset.
#' @return Violin plot including summary stats.
#' @importFrom ggplot2 geom_violin geom_boxplot theme_classic
#' @importFrom dplyr select
#' @export
summary_weight_trt <- function(adsl) {
  data <- adsl |> select(B_WEIGHT, ATRT)
  ggplot(data, aes(x = ATRT, y = B_WEIGHT, color = ATRT)) +
    geom_violin() +
    geom_boxplot(width = 0.1) +
    theme_classic()
}
