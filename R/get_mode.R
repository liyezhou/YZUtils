# #' Get the Mode of a Vector
# #'
# #' This function calculates the mode of a vector, i.e., the most frequent value.
# #'
# #' @param x A vector of numeric or character values.
# #'
# #' @return The mode of the vector `x`, which is the value that appears most frequently.
# #'
# #' @examples
# #' get_mode(c(1, 2, 2, 3, 3, 3))
# #' get_mode(c("apple", "banana", "apple", "apple", "cherry"))
# #'
# #' @export
#
# get_mode <- function(x) {
#   ux <- unique(x)
#   ux[which.max(tabulate(match(x, ux)))]
# }
