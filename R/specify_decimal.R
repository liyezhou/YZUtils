#' A unified rouding function
#'
#' Convert a number to string with specified decimal places
#'
#' @param x The number
#' @param y The number of decimal places
#' @return The converted string
#' @export

specify_decimal <- function (x, k = 2, as_string = T) {
  if(as_string) {
    return(ifelse(is.na(x), "", trimws(format(round(x, k), nsmall = k))))
  } else {
    return(round(x, k))
  }
}
