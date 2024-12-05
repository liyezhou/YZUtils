#' Printing Pipe
#'
#' the pipe prints the output and passes on the previous value
#'
#' @param lhs the object passed by previous function
#' @param rhs the function to print
#' @return No return
#' @export

'%P>%' <- function(lhs, rhs) {lhs %T>% {print(rhs(.))} }
