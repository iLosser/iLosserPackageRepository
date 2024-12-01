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
  
  # Create a data frame with spaces, dots, and camel case in column names
  df <- data.frame("First Name" = c(1, 2), "Last.Name" = c(3, 4), "UserID" = c(5, 6))
  
  # Apply ColSnake function to rename columns
  df_renamed <- ColSnake(df)
  
  # Check if the column names are properly converted to snake_case
  expect_equal(colnames(df_renamed), c("first_name", "last_name", "userid"))
  
  # Test with tibble
  library(tibble)
  tibble_df <- tibble("First Name" = c(1, 2), "Last.Name" = c(3, 4), "UserID" = c(5, 6))
  tibble_renamed <- ColSnake(tibble_df)
  
  # Check if column names are renamed for tibble
  expect_equal(colnames(tibble_renamed), c("first_name", "last_name", "userid"))
  
  # Test with edge case: already snake_case
  df_snake <- data.frame("first_name" = c(1, 2), "last_name" = c(3, 4))
  df_snake_renamed <- ColSnake(df_snake)
  expect_equal(colnames(df_snake_renamed), c("first_name", "last_name"))

})

