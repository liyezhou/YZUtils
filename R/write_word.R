#' Export table as word
#'
#' Export a normal table (tibble or data.frame) as a word document
#'
#' @param table The table to export
#' @param filename The output file name
#' @return No return
#' @export

write_word <- function(table, filename){
  doc = officer::read_docx()
  if(inherits(table, "flextable")) {
    doc = flextable::body_add_flextable(doc, value = table)
  } else {
    doc = flextable::body_add_flextable(doc, value = flextable::flextable(table))
  }

  print(doc, target = filename)
}
