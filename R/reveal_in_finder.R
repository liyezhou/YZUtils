#' Reveal in Finder
#'
#' Show the file or the directory in finder
#'
#' @param path reveal the file or directory in finder
#' @return No return
#' @export

reveal_in_finder <- function(path = getwd()) {
  system(paste0("open -R \"", path %>% normalizePath(), "/\""))
}
