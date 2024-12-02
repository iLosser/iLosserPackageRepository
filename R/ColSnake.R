#' rename Data Frame Columns to Snake Case 
#'
#' the function renames all columns in a data frame to snake_case.
#' @param df a data frame whose column names need to be converted to snake_case.
#' @return a data frame with renamed columns in snake_case.
#' @export  
#' @examples  
#' df <- data.frame("Column One" = 1:3, "Column.Two" = 4:6)
#' ColSnake(df)
#' # Returns a data frame with columns "column_one" and "column_two".
ColSnake <- function(df) {
  if (!is.data.frame(df)) {
    stop("input must be a data frame")
  }
  colnames(df) <- TooSnake(colnames(df))
  return(df)
}