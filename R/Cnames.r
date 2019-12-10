#----------------------------------------------------------------------------#
#' @title Character names
#' @description Return a list of a Character variables
#' @param x a dataframe to deal with
#' @export
Cnames = function (x)
{
  clist <- sapply(x, is.character)
  clist <- colnames(x[, clist])
  return(clist)
}
