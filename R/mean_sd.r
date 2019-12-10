#----------------------------------------------------------------------------#
#' @title mean and sd
#' @description report a mean(sd) string
#' @param x a vector
#' @param digit number of digit
#' @param ... ...
#' @import stats
#' @export
mean_sd = function(x,digit = 2,...) {
  n = paste("%.",digit,"f",sep = "")
  mean1 = mean(x,na.rm =T)
  mean1 = sprintf(n, mean1)
  sd1 = sd(x, na.rm =T)
  sd1 = sprintf(n,sd1)
  a = paste(mean1,"(", sd1,")", sep = "")
  return(a)
}
