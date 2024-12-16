#' List Top Items from a Vector
#'
#' This function returns a formatted string of the top `num` most frequent items from a vector.
#'
#' @param vec A vector of items (can be characters or factors).
#' @param num An integer specifying how many top items to return.
#'
#' @return A formatted string of the top `num` most frequent items along with their counts.
#'
#' @examples
#' list_top_item(c("apple", "banana", "apple", "cherry", "banana", "banana"), 2)
#'
#' @importFrom dplyr count arrange group_map
#' @importFrom tibble tibble
#' @export

list_top_item <- function(vec, num) {
  tibble(a = vec) %>%
    count(a) %>%
    arrange(desc(n)) %>%
    slice(1:num) %>%
    rowwise %>%
    group_map(~{paste0(.x$a, " (", .x$n, ")")}) %>%
    paste0(collapse = " | ")
}
