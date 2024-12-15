#' View table as a temporary csv file
#'
#' Write a data.frame to a temporary CSV file to be viewed externally in finder.
#'
#' @param tbl A table or data frame
#' @return Invisibly returns the path to the temporary CSV file.
#' @details The function creates a temporary file with a `.csv` extension, writes the provided table to this file, and then opens the directory containing the file in the MacOS finder. This is useful for quickly inspecting tables outside of R.
#' @examples
#'
#' library(dplyr)
#' library(readr)
#'
#' # Example table
#' example_tbl <- tibble::tibble(
#'   x = 1:5,
#'   y = letters[1:5]
#' )
#'
#' # View the table in a temporary CSV file
#' view_tmp_csv(example_tbl)
#'
#' @export
#' @import tidyverse

view_tmp_csv <- function(tbl) {
  f = tempfile(fileext = ".csv")
  tbl %>% write_csv(f)
  reveal_in_finder(f)
}
