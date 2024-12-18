% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make_file_backup.R
\name{make_file_backup}
\alias{make_file_backup}
\title{Make a Backup of a File}
\usage{
make_file_backup(file, alt_backup_dir = NULL)
}
\arguments{
\item{file}{A character string specifying the path to the file to be backed up.}

\item{alt_backup_dir}{A character string specifying an alternative directory for storing the backup.
If `NULL`, the backup will be stored in the same directory as the original file.}
}
\value{
No return value. This function creates a backup of the specified file in the given location.
}
\description{
This function creates a backup of a specified file, either in the same directory
or in an alternative backup directory, with a timestamp in the backup's name.
}
\examples{
make_file_backup("path/to/file.txt")
make_file_backup("path/to/file.txt", "path/to/alternative_backup_dir")

}
