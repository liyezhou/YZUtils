#' Format P value to text
#'
#' Format the p value column with stars behind.
#'
#' @param df The dataframe / tibble
#' @param p.col The name of the p value column
#' @param col.to.format Optional, the column to format instead of the p.value colomn itself
#' @param decimal Optional, the number of decimal places to round the number to
#' @return The dataframe / tibble with the significance star column and the formated p value column
#' @export

add_signif_and_format <- function(df, p.col, col.to.format = NULL, decimal = 3) {
  if(is.null(col.to.format)) {
    df %>%
      rstatix::add_significance(p.col = p.col,
                                cutpoints = c(0, 0.01, 0.05, 1),
                                symbols = c("**", "*", "")) %>%
      dplyr::mutate(
        !!glue::glue("{p.col}.text") :=
          glue::glue("{.[[p.col]] %>% specify_decimal(decimal)}{.[[paste0(p.col, \".signif\")]]}") %>%
          plyr::mapvalues("0.000**", "<0.001**", warn_missing = F)
      )
  } else{
    df %>%
      rstatix::add_significance(p.col = p.col,
                                cutpoints = c(0, 0.01, 0.05, 1),
                                symbols = c("**", "*", "")) %>%
      dplyr::mutate(
        !!glue::glue("{col.to.format}.text") :=
          glue::glue("{.[[col.to.format]] %>% specify_decimal(decimal)}{.[[paste0(p.col, \".signif\")]]}")
      )
  }
}

