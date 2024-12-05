#' Add a row to a matrix
#'
#' Add a row to a matrix
#'
#' @param M The matrix
#' @return The matrix with one extra row added at the bottom
#' @export

mat_add_row <- function(M) {
  return(M %>% rbind(0))
}
