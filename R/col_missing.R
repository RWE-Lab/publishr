#----------------------------------------------------------------------------#
#' @title Missing pattern
#' @description Generate missing value table by colunm
#' @param x dataframe
#' @import magrittr
#' @importFrom dplyr rename mutate
#' @importFrom tibble rownames_to_column
#' @importFrom scales percent
#' @export col_missing
col_missing = function(x) {
  out <- x %>%
    is.na() %>% colSums() %>% as.data.frame() %>%
    rownames_to_column(.data, var = "var") %>%
    rename(.data, "n" = ".") %>%
    mutate(percent = percent(.data$n/nrow(x)))
  return(out)
}
