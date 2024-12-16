#' Safe Sampling from a Vector
#'
#' This function returns a sample of a specified size from a vector, but if the vector is shorter
#' than the desired size, it returns the entire vector instead of generating an error.
#'
#' @param vector A vector from which to sample.
#' @param size An integer specifying the size of the sample.
#'
#' @return A vector of length `size` if `length(vector) >= size`, otherwise returns the entire `vector`.
#'
#' @examples
#' safe_sample(1:10, 5)
#' safe_sample(1:3, 5)
#'
#' @export


safe_sample <- function(vector, size) {
  if(length(vector) > size) {sample(vector, size)} else {vector}
}
