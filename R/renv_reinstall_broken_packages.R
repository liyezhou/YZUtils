#' Reinstall Broken packages using renv
#'
#' Run renv::restore() and renv::hydrate() first, and there might still be broken packages left, run this to install those broken packages.
#'
#' @return No return
#' @export

reinstall_broken_packages_for_renv <- function() {
  pkgs = list.files(.libPaths()[1], full.names = TRUE)
  broken = which(!file.exists(pkgs))
  if (length(broken) > 0) {
    renv::install(basename(pkgs)[broken])
  }
}
