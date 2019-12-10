#----------------------------------------------------------------------------#
#' @title Numeric names
#' @description Return a list of a Numeric variables
#' @param x a dataframe to deal with
#' @export
Nnames = function (x)
{
  nlist <- sapply(x, is.numeric)
  nlist <- colnames(x[, nlist])
  return(nlist)
}
