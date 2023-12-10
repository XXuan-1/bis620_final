test_that("The summary_...() errors when no ATRT column.",
  {
    data(iris)
    expect_error(summary_weight_sex(iris))
  }
)

test_that("The summary_...() errors when no ATRT column.",
          {
            data(iris)
            expect_error(summary_age_trt(iris))
          }
)

test_that("The summary_tbl() returns a list object.",
          {
            x <- summary_tbl(adsl)
            expect_type(x, "list")
          }
)
