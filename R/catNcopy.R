#' Concatenate & Copy
#'
#' Helper to concatenate string & copy to clipboard
#'
#' @param texts the text vector
#' @param sep the separator
#' @return no return, the values are copied to the clipboard
#' @export

catNcopy <- function(texts, sep = "\", \"") {
  cat(texts, sep = sep)
  paste(texts, collapse = sep) %>% clipr::write_clip()
}
