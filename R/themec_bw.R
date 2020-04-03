#----------------------------------------------------------------------------#
#' @title ggplot2 theme black and white
#' @description clean and beautiful ggplot2 theme black and white
#' @param panel.aspect.ratio panel.aspect.ratio
#' @param axis.title.textsize axis.title.textsize
#' @param plot.tag.textsize plot.tag.textsize
#' @param plot.title.textsize plot.title.textsize
#' @param plot.subtitle.textsize plot.subtitle.textsize
#' @param plot.footnote.textsize plot.footnote.textsize
#' @param legend.position legend.position = "top" or "right" or others
#' @param legend.textsize legend.textsize
#' @param legend.background.fill legend.background.fill
#' @param legend.background.color legend.background.color
#' @param legend.key.fill legend.key.fill
#' @param legend.key.color legend.key.color
#' @param strip.textsize strip.textsize
#' @import ggplot2
#' @export themec_bw

themec_bw = function(panel.aspect.ratio = 1,
                     axis.title.textsize = 12,
                     plot.tag.textsize = 14,
                     plot.title.textsize = 14,
                     plot.subtitle.textsize = 12,
                     plot.footnote.textsize = 12,
                     legend.position = "right",
                     legend.textsize = 12,
                     legend.background.fill = "transparent",
                     legend.background.color = "transparent",
                     legend.key.fill = "transparent",
                     legend.key.color = "transparent",
                     strip.textsize = 12) {
  themec_bw = theme_bw() +
    theme(aspect.ratio = panel.aspect.ratio,
          text = element_text(family = "Arial"),
          strip.background = element_rect(linetype = "solid",
                                          color = "black",
                                          fill = "grey20",
                                          size = 0.5),
          strip.text = element_text(size = strip.textsize,color = "white"),
          panel.border = element_rect(colour = "black",size = 0.5),
          axis.line = element_line(colour = "black",size = 0.2),
          panel.grid = element_line(colour = "white",size = 0.3),
          panel.background = element_rect(fill = "#F9F6F7"),
          plot.title = element_text(size = plot.title.textsize,face = "bold",family = "Arial Narrow"),
          plot.subtitle = element_text(size = plot.subtitle.textsize,face = "italic",family = "Arial Narrow"),
          plot.caption = element_text(size = plot.footnote.textsize,family = "Arial Narrow",hjust = 0),
          axis.title = element_text(size = axis.title.textsize,face = "bold",family = "Arial Narrow"),
          plot.tag = element_text(size = plot.tag.textsize,face = "bold",family = "Arial"),
          legend.title = element_text(size = legend.textsize,face = "bold",family = "Arial Narrow"),
          legend.position = legend.position,
          legend.background = element_rect(fill = legend.background.fill,colour = legend.background.color),
          legend.key = element_rect(fill = legend.key.fill,colour = legend.key.color),
          legend.text = element_text(size = legend.textsize,family = "Arial Narrow")
          )
  return(themec_bw)
}
