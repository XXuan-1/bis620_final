library(ggplot2)
test_that("summary_ecog_trt returns a ggplot", {
  data <- adsl
  p <- summary_ecog_trt(data)
  expect_true(is.ggplot(p))
})
