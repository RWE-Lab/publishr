#----------------------------------------------------------------------------#
#' @title formating numbers
#' @description Return formated string of number
#' @param digit a number defining digits
#' @param x vector
#' @param ... ...
#' @export digit2
digit2 = function(x,digit=2,...) {
  n = paste0("%.",digit,"f")
  sprintf(n,x)
}
