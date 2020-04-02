#----------------------------------------------------------------------------#
#' @title summary mod
#' @description summary mod glm
#' @param mod a glm mod
#' @import stats
#' @export
summary2_glm = function(mod) {
  out1 =
  cbind(exp(cbind(OR = coef(mod),
                  confint.default(mod))),
        P.value = round(coef(summary(mod))[,4],5))
  return(out1)
}
