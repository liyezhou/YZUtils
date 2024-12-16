#' Print tibble row
#'
#' Print the a row of a tibble as name-value pairs
#'
#' @param tbl the table to print
#' @param row which row to print
#'
#' @return A new tibble with name-value pairs
#' @export
#' @import dplyr
#' @importFrom tidyr pivot_longer
print_tibble_row <- function(tbl, row = 1) {
  # if(nrow(tbl) > 1) {warning(glue("Only printing first row (out of {nrow(tbl)}) of the tibble!"))}
  tbl %>%
    transpose_tibble_row(row = row) %>%
    print(., n = 999)
  # return(tbl)
}

#' @rdname print_tibble_row
#' @export
transpose_tibble_row <- function(tbl, row = 1) {
  # if(nrow(tbl) > 1) {warning(glue("Only printing first row (out of {nrow(tbl)}) of the tibble!"))}
  tbl %>%
    dplyr::ungroup() %>%
    dplyr::slice(row) %>%
    dplyr::mutate(dplyr::across(dplyr::everything(), as.character)) %>%
    tidyr::pivot_longer(cols = dplyr::everything())
  # return(tbl)
}

