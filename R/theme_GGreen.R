library(ggplot2)

# Custom theme_GGreen function
theme_GGreen <- function(base_size = 12, base_family = "sans") {
  theme_minimal(base_size = 12, base_family = "sans") +
    theme(
      panel.grid.major = element_line(color = "#007700", size = 0.5), ## gridlines thick dark lines for mayor
      panel.grid.minor = element_line(color = "#c3FDc3", size = 0.25), ## light barely visible lines as minor
      axis.line = element_line(color = "#007700"),                    ## x and y axe lines
      axis.ticks = element_line(color = "#007700"),                   ## tick color = line color
      text = element_text(color = "#308030"),                         ## text
      axis.text = element_text(color = "#308030"),                    ## also text but now on the axis
      axis.title = element_text(color = "#0F6000", face = "bold"),    ## title text on the axis
      plot.title = element_text(color = "#205027", face = "bold", size = 15,
                                hjust = 0.5
                                ),
      plot.subtitle = element_text(
        color = "#2e7d32",
        size = 12,
        hjust = 0.5
      ),
      
      # Caption styling
      plot.caption = element_text(color = "#4caf50", size = 10),
      
      # Legend styling with green accents
      legend.background = element_rect(color = "#e6f7e6"),
      legend.key = element_rect(fill = "#e6f7e6", color = "#a8d5a8"),
      legend.title = element_text(color = "#2e7d32", face = "bold"),
      legend.text = element_text(color = "#2e7d32")
    )
}