#' Convert a String to Snake Case
#'
#' This function changes a string to snake_case by:
#' - changing characters to lowercase
#' - spaces become underscrores
#' @param string A string to be converted to snake_case.
#' @return A string in snake_case format.
#' @examples
#' @export
#' TooSnake("a /CoLuMn /NaMe")
#' # returns: "a_column_name"
TooSnake <- function(string) {
  string <- gsub("[^a-zA-Z0-9]+", "_", string)  # Replace non-alphanumeric with underscores
  string <- tolower(string)                    # Convert to lowercase
  return(string)
}
