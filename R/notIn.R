#' Operator: Not in a vector
#'
#' Test whether the element in NOT in a vector
#'
#' @param x the element to test
#' @param y the vector in which the element is searched for
#' @return The created formula
#' @export


# Negation of %in%
'%!in%' <- function(x,y) {
  return(!('%in%'(x,y)))
}
