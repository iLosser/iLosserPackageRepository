#' Rename Data Frame Rows to Snake Case
#'
#' The function renames all row names in a data frame to snake_case.
#' @param df A data frame whose row names need to be converted to snake_case.
#' @return A data frame with renamed rows in snake_case.
#' @examples  
#' df <- data.frame("Column One" = 1:3, "Column.Two" = 4:6)
#' rownames(df) <- c("Row One", "Row Two", "Row Three")
#' RowSnake(df)
#' # Returns a data frame with row names "row_one", "row_two", and "row_three".
#' @export 
RowSnake <- function(df) {
  if (!is.data.frame(df)) {
    stop("Input must be a data frame.")  
  }
  rownames(df) <- TooSnake(rownames(df))
  return(df)
}
