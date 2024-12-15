#' Export an R plot
#'
#' simply export an R plot using the ggexport device
#'
#' @param nullObject is to help for pipe usage
#' @param fileName name of the output file
#' @return No return
#' @export
#' @import grDevices

export_plot = function(nullObject = NULL, fileName) {
  grDevices::recordPlot() %>% ggpubr::ggexport(filename = fileName)
}
