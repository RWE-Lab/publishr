
#----------------------------------------------------------------------------#
#' @title mean difference output from t-tests
#' @description return ttest results: effect sizes and pvalues
#' @param x group1
#' @param y group2
#' @param conf.level conf.level
#' @param alternative sided
#' @param digit digits for effect size
#' @param pdigits digits for p values
#' @param ... ...
#' @import stats
#' @export
mean_diff = function(x,y,conf.level = 0.95,alternative = "two.sided",digit = 2,pdigits = 3,...) {
  a = t.test(x,y,conf.level = conf.level,alternative = alternative)
  conf1 = a$conf.int %>% round(digit)
  mean_diff1 = (a$estimate[1]-a$estimate[2]) %>% round(digit)
  b1 = mean_sd(x,digit = digit)
  b2 = mean_sd(y,digit = digit)
  out1 = paste0(mean_diff1,"(",conf1[1],",",conf1[2],")")
  out2 = a$p.value %>% round(pdigits) %>% pformat()
  out3 = c(b1,b2,out1,out2)
  names(out3) = c("group1","group2","effect size","P")
  return(out3)
}
