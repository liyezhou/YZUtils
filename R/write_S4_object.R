#' Print class object
#'
#' Print information from a class object to a file
#'
#' @param object An S4 class object
#' @param filename The output file name
#' @param show.in.finder Whether to show the written file after printing
#' @return No return
#' @export

write_object <- function(obj, filename, show.in.finder = T) {
  sink(filename)
  coerce_object_as_list(obj) %>% print
  sink()
  if(show.in.finder){
    reveal_in_finder(filename)
  }
}

#' @rdname write_object
#' @export
coerce_object_as_list = function(obj) {
  if (isS4(obj)) {
    nms <- slotNames(obj)
    names(nms) <- nms
    lapply(lapply(nms, slot, object=obj), coerce_object_as_list)
  } else obj
}

