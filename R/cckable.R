#----------------------------------------------------------------------------#
#' @title cckable
#' @description kable wrapper functions
#' @param data a dataframe to be printed
#' @param format format of table output
#' @param digits digits
#' @param row.names show row.names
#' @param caption table caption
#' @import knitr kableExtra magrittr
#' @export cckable

cckable <- function(data,
                    format = "html",
                    digits = 4,
                    row.names = F,
                    caption = "Table") {
dat1 = data %>% as.data.frame()
cckable = kable(dat1,
                format = format,
                digits = digits,
                row.names = row.names,
                caption = caption) %>%
  kable_styling(bootstrap_options = c("bordered", "condensed"),
                full_width = F,font_size = 11,stripe_color = "black") %>%
  column_spec(1:ncol(dat1),border_left = T,border_right = T) %>%
  row_spec(row = 0,bold = F,background = "black",color = "white",align = "center",
           extra_css = "border-top: 1px solid;border-bottom: 1px solid;border-left: 1px solid;border-right: 1px solid;") %>%
  row_spec(row = 1:nrow(dat1),extra_css = "border-bottom: 1px solid;",
           align = "center",color = "black")
return(cckable)
}
