#----------------------------------------------------------------------------#
#' @title "MEDIAN and Q1 and Q3"
#' @description "report MEDIAN and Q1 and Q3"
#' @param x a vector
#' @param digit digit
#' @import stats
#' @export
median_q = function(x,digit = 2) {
  n = paste("%.",digit,"f",sep = "")
  mdn1 = median(x,na.rm =T)
  mdn1 = sprintf(n, mdn1)
  q1 = quantile(x, na.rm =T)["25%"]
  Q1 = sprintf(n, q1)
  q3 = quantile(x, na.rm =T)["75%"]
  Q3 = sprintf(n, q3)
  a = paste(mdn1,"[", Q1,",",Q3,"]", sep = "")
  return(a)
}
