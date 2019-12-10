#----------------------------------------------------------------------------#
#' @title summary lm mod
#' @description summary mod lm
#' @param mod a lm mod
#' @import stats
#' @export
summary2_lm = function(mod) {
  out1 =
  cbind(Estimate = coef(mod),
        confint.default(mod),
        P.value = coef(summary(mod))[,4] %>% round(.,5))
  return(out1)
}
