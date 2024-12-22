#' My Custom Scatter Plot
#'
#' This will create a scatter plot with default orange points and a minimal theme.
#'
#' @param data A data frame containing the data.
#' @param x Name of the variable for the x-axis (character).
#' @param y Name of the variable for the y-axis (character).
#' @param title Title for the plot (default: "Custom Scatter Plot").
#' @return The output from \code{\link{print}}
#' @import ggplot2
#' @export
custom_scatter_plot <- function(data, x, y, title = "Custom Scatter Plot") {
  ggplot2::ggplot(data, ggplot2::aes_string(x = x, y = y)) +
    ggplot2::geom_point(color = "darkorange", size = 3) +
    ggplot2::labs(title = title, x = x, y = y) +
    ggplot2::theme_minimal() +
    ggplot2::theme(
      plot.title = ggplot2::element_text(hjust = 0.5, size = 16, color = "blue"),
      axis.text = ggplot2::element_text(size = 12),
      axis.title = ggplot2::element_text(size = 14, face = "bold")
    )
}

#' My Custom Bar Plot
#'
#' This will create a bar plot with default styling and a minimal theme.
#'
#' @param data A data frame containing the data.
#' @param x Name of the variable for the x-axis (character).
#' @param fill Name of the variable for the fill (character).
#' @param title Title for the plot (default: "Custom Bar Plot").
#' @return The output from \code{\link{print}}
#' @import ggplot2
#' @export
custom_bar_plot <- function(data, x, fill, title = "Custom Bar Plot") {
  ggplot2::ggplot(data, ggplot2::aes_string(x = x, fill = fill)) +
    ggplot2::geom_bar(position = "dodge", color = "black") +
    ggplot2::labs(title = title, x = x, fill = fill) +
    ggplot2::theme_minimal() +
    ggplot2::scale_fill_brewer(palette = "Set2") +
    ggplot2::theme(
      plot.title = ggplot2::element_text(hjust = 0.5, size = 16, color = "purple"),
      axis.text.x = ggplot2::element_text(angle = 45, hjust = 1),
      axis.title = ggplot2::element_text(size = 14, face = "bold")
    )
}
