#----------------------------------------------------------------------------#
#' @title ticks number control
#' @description ticks number control for ggplot
#' @param n	number of ticks
#' @examples "scale_x_continuous(break = n.ticks(20))"
#' @export
n_ticks = function (n) {function(limits) pretty(limits, n)}
