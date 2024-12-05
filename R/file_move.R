#' Move and Rename a File
#'
#' A wrapper around file.rename, allowing the destination folder to be created if needed
#'
#' @param from The full path of the original file
#' @param to The full path of the destination file, i.e., the new FILENAME at the new folder, not the directory
#' @return return True if successful
#' @export

file_move <- function(from, to) {
  todir <- dirname(to)
  if (!dir.exists(todir)) {dir.create(todir, recursive=TRUE)}
  file.rename(from = from, to = to)
}
