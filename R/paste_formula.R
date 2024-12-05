#' Create a formula
#'
#' Help to create Formula
#'
#' @param y the dependent variable Y
#' @param x the independent variable X
#' @return The created formula
#' @export


paste_formula <- function(y, x) {
  as.formula(paste(y, " ~ ", paste(x, collapse = "+")))
}
