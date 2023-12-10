#' @title Histogram Exploring Statistics of ECOG Performance and Treatment
#' @description  Plot a histogram showing summary satistics of performance
#' status grouped by treatment.
#' @param adsl the dataset.
#' @return Histogram including summary stats.
#' @importFrom ggplot2 geom_bar theme_bw scale_fill_manual geom_text theme aes
#' @importFrom ggplot2 element_text
#' @importFrom dplyr select
#' @export
summary_ecog_trt <- function(adsl) {
  data <- adsl |> select(B_ECOG, ATRT)
  ggplot(data, aes(x = B_ECOG, fill = ATRT)) +
    geom_bar() +
    scale_fill_manual(values = c('#CCCCFF',"#FFCCCC")) +
    theme_bw() +
    theme(axis.text.x = element_text(angle = 270, hjust = 0))
}
