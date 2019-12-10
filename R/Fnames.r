#----------------------------------------------------------------------------#
#' @title Factor names
#' @description Return a list of a Factor variables
#' @param x a dataframe to deal with
#' @export
Fnames = function (x)
{
  flist <- sapply(x, is.factor)
  flist <- colnames(x[, flist])
  return(flist)
}
