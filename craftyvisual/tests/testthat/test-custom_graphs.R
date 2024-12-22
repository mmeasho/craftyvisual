test_that("custom_scatter_plot works", {
  data <- mtcars
  p <- custom_scatter_plot(data, "wt", "mpg", "Test Scatter Plot")
  expect_s3_class(p, "ggplot")
})

test_that("custom_bar_plot works", {
  data <- data.frame(
    cut = c("Ideal", "Premium", "Good"),
    color = c("D", "E", "F"),
    count = c(50, 30, 20)
  )
  p <- custom_bar_plot(data, "cut", "color", "Test Bar Plot")
  expect_s3_class(p, "ggplot")
})
