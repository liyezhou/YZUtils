#' Display a Green Notification Message
#'
#' This function prints a message to the console in green color to notify the user.
#'
#' @param msg A character string containing the message to be displayed.
#'
#' @return No return value. This function simply prints the message to the console.
#'
#' @examples
#' notify("Operation completed successfully.")
#'
#' @importFrom crayon green
#' @importFrom glue glue
#' @export

notify <- function(msg) {
  cat(crayon::green(glue(msg)), "\n")
}
