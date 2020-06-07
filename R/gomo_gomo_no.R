#' Generate animated text
#'
#' @description The function animates text using the Animate.css library
#'
#' @param text The text that should be animated
#' @param level The Markdown level of the text, available are : #, ##, ###, ####, #####, ######, text. Default to "#"
#' @param animation The type of animation. Default to "bounce".
#' @param repeating Number of times the animation is repeated (from 1 to 3). Default to 1
#' @param delay Time before triggering the animation (in seconds). Default to 0
#' @param duration The speed of the animation, available choices are: "slow", "slower", "fast", "faster". Default to "slow"
#'
#' @return animated text
#' @export
#'
#' @examples \dontrun{
#'
#' # Don't forget to run use_gomo() before
#'
#' gomo_gomo_no(text = "I Love Chocolate !!!!", level = "###", animation = "tada")
#'
#' }
#'
#'
#'
gomo_gomo_no <- function(text, level = "#", animation = "bounce", repeating = 1, delay = 0, duration = "slow", color = "black"){


  if(!is.character(text) | !is.character(level) | !is.character(animation) | !is.character(duration)){
    stop("text, level and animation must be a characer string")
  }


  stopifnot(level %in%  c("#", "##", "###", "####", "#####", "######", "text"))


  level <- switch(level, "#" = "h1", "##" = "h2", "###" = "h3", "####" = "h4", "#####" = "h5", "######" = "h6","text" = "p")




  htmltools::HTML(glue::glue(


    "

    <{level} style='color:{color}' class='animate__animated animate__{animation} animate__repeat-{repeating} animate__delay-{delay}s animate__{duration}'> {text} </{level}>


    "



  ))



}

