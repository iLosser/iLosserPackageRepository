test_that("TooSnake works correctly", {
  
  # Test simple camel case to snake_case
  expect_equal(TooSnake("CamelCaseExample"), "camelcaseexample")
  
  # Test space to underscore conversion
  expect_equal(TooSnake("Space To Snake"), "space_to_snake")
  
  # Test mixed delimiters (spaces, dots, hyphens)
  expect_equal(TooSnake("this.is-a test"), "this_is_a_test")
  
  # Test already snake_case input
  expect_equal(TooSnake("already_snake_case"), "already_snake_case")
})

test_that("ColSnake works correctly", {
  # data frame with spaces, dots, and camel case in cols
  df <- data.frame("First Name" = c(1, 2), "Last.Name" = c(3, 4), "UserID" = c(5, 6))
  # Apply ColSnake 
  df_renamed <- ColSnake(df)
  # Check to see if the col names are properly renamed to snake_case
  expect_equal(colnames(df_renamed), c("first_name", "last_name", "userid"))
  
  
  # already snake_case
  df_snake <- data.frame("first_name" = c(1, 2), "last_name" = c(3, 4))
  df_snake_renamed <- ColSnake(df_snake)
  expect_equal(colnames(df_snake_renamed), c("first_name", "last_name"))

})

#####


test_that("RowSnake converts simple row names to snake_case", {
  df <- data.frame("Column One" = 1:3, "Column Two" = 4:6)
  rownames(df) <- c("Row One", "Row Two", "Row Three")
  df_snake <- RowSnake(df)
  
  expect_equal(rownames(df_snake), c("row_one", "row_two", "row_three"))
})

test_that("RowSnake handles row names with special characters", {
  df <- data.frame("Column One" = 1:2, "Column Two" = 3:4)
  rownames(df) <- c("Row@ One!", "Row# Two?")
  df_snake <- RowSnake(df)
  
  expect_equal(rownames(df_snake), c("row_one_", "row_two_"))
})

test_that("RowSnake handles row names with multiple spaces", {
  df <- data.frame("Column One" = 1:2, "Column Two" = 3:4)
  rownames(df) <- c("  Row    One  ", "   Another   Row ")
  df_snake <- RowSnake(df)
  
  expect_equal(rownames(df_snake), c("_row_one_", "_another_row_"))
})

test_that("RowSnake works with an empty data frame", {
  df <- data.frame()
  rownames(df) <- character(0)
  df_snake <- RowSnake(df)
  
  expect_equal(rownames(df_snake), character(0))
})

test_that("RowSnake throws an error if input is not a data frame", {
  expect_error(RowSnake("not a data frame"), "Input must be a data frame.")
})

