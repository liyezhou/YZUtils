#' Save Plotly Plots to HTML
#'
#' The original function saveWidget doesn't work when used in a directory other than the current working directory (from getwd()). Specifically, it doesn't delete the resource folder.
#'
#' @param p the plot to export
#' @param filename the file to save to
#' @return no return, the values are copied to the clipboard
#' @export
#' @import tools
#' @importFrom htmlwidgets saveWidget
#' @importFrom plotly as_widget

save_plotly <- function(p, filename) {
  htmlwidgets::saveWidget(plotly::as_widget(p), file = filename)

  libdir = file.path(dirname(filename), paste(tools::file_path_sans_ext(basename(filename)),
                                              "_files", sep = ""))
  unlink(libdir, recursive = T)
}
