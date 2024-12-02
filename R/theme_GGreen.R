#' Custom ggplot2 Theme with Green Accent
#' 
#' `theme_GGreen` A full ggplot themed along the 1990 green color graphics video games
#' @name theme_GGreen
#' @param base_size Font size, default = 12.
#' @param base_font Base font family, default = "sans".
#'
#' @return A ggplot2 theme function.
#'
#' @examples
#' # Example usage of theme_GGreen
#' library(ggplot2)
#' data(mtcars)
#' ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
#'   geom_point(size = 3) +
#'   labs(
#'     title = "Fuel Efficiency by Weight",
#'     subtitle = "Grouped by Number of Cylinders",
#'     x = "Weight (1000 lbs)",
#'     y = "Miles per Gallon (mpg)",
#'     color = "Cylinders"
#'   ) +
#'   theme_GGreen()
#'
#' @export

library(ggplot2)
# Custom theme_GGreen function
theme_GGreen <- function(base_size = 12, base_font = "sans") {
  
####################################### Main body
  
  ggplot2::theme_minimal(base_size = base_size, base_family = base_font) +
    ggplot2::theme(
      panel.grid.major = ggplot2::element_line(color = "#007700", size = 0.5), ## gridlines thick dark lines for mayor
      panel.grid.minor = ggplot2::element_line(color = "#9bbc0f", size = 0.25), ## light barely visible lines as minor
      axis.line = ggplot2::element_line(color = "#007700"),                    ## x and y axe lines
      axis.ticks = ggplot2::element_line(color = "#007700"),                   ## tick color = line color
      text = ggplot2::element_text(color = "#306230"),                         ## text
      axis.text = ggplot2::element_text(color = "#306230"),                    ## also text but now on the axis
      axis.title = ggplot2::element_text(color = "#0F6000", face = "bold"),    ## title text on the axis
      plot.title = ggplot2::element_text(color = "#0f380f", face = "bold", size = base_size * 1.4,
                                hjust = 0.5
                                ),                                    ## title themes
      
####################################### Title

            plot.subtitle = ggplot2::element_text(color = "#306230", size = base_size,
        hjust = 0.5),                                                 ## subtitle specification
      
      plot.caption = ggplot2::element_text(color = "#306230", size = base_size * 0.8),      ## caption
      
      
####################################### Legend      

      legend.background = ggplot2::element_rect(color = "#c3FDc3"),            
      legend.key = ggplot2::element_rect(fill = "#c3FDc3", color = "#a0d0a0"),
      legend.title = ggplot2::element_text(color = "#0f380f", face = "bold"),
      legend.text = ggplot2::element_text(color = "#306230")
    )
}