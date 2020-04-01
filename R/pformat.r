#----------------------------------------------------------------------------#
#' @title pformat
#' @description return p-values as strings for one value
#' @param x a value
#' @export
pformat = function(x) {
  out1 = ifelse(is.na(x),yes = NA,
         ifelse(is.numeric(x) == F,NA,
         ifelse(x<0.001,"< 0.001",ifelse(x>=1,"> 0.999",x))))
  return(out1)
  }
