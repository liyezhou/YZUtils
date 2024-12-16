#' Make a Backup of a File
#'
#' This function creates a backup of a specified file, either in the same directory
#' or in an alternative backup directory, with a timestamp in the backup's name.
#'
#' @param file A character string specifying the path to the file to be backed up.
#' @param alt_backup_dir A character string specifying an alternative directory for storing the backup.
#'        If `NULL`, the backup will be stored in the same directory as the original file.
#'
#' @return No return value. This function creates a backup of the specified file in the given location.
#'
#' @examples
#' make_file_backup("path/to/file.txt")
#' make_file_backup("path/to/file.txt", "path/to/alternative_backup_dir")
#'
#' @importFrom tools file_path_sans_ext file_ext
#' @importFrom glue glue
#' @export

make_file_backup <- function(file, alt_backup_dir = NULL) {
  dir = dirname(file)
  basename = tools::file_path_sans_ext(basename(file))
  ext = tools::file_ext(file)
  backup_time = format(Sys.time(), "%Y%m%d_%H%M%S")
  if(!is.null(alt_backup_dir)) {
    backup_dir = file.path(alt_backup_dir, glue("backup_{basename}_{ext}/{backup_time}"))
  } else {
    backup_dir = file.path(dir, glue("backup_{basename}_{ext}/{backup_time}"))
  }
  dir.create(backup_dir, recursive = T)
  file.copy(file, file.path(backup_dir, glue("{basename}_{backup_time}.{ext}")))
}
