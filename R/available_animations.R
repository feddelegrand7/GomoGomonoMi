

#' Displaying the Available Animations
#'
#' @description The function displays a list of the available animations from the Animate.css library
#'
#' @return a list of the available animations by type of animation
#'
#' @examples \donttest{
#'
#'
#' available_animations()
#'
#' }
#'
#' @export
#'
available_animations <- function(){


  list(

    attention_seekers =   c("bounce", "flash", "pulse", "rubberBand", "shakeX", "shakeY", "headShake", "swing", "tada", "wobble", "jello", "heartBeat"),

    back_entrances =     c("backInDown", "backInLeft", "backInRight", "backInUp"),


    back_exits =     c("backOutDown", "backOutLeft", "backOutRight", "backOutUp"),


    bouncing_entrances =  c("bounceIn", "bounceInDown", "bounceInLeft", "bounceInRight", "bounceInUp"),


    bouncing_exits =   c("bounceOut", "bounceOutDown", "bounceOutLeft", "bounceOutRight", "bounceOutUp"),


    fading_entrances =   c("fadeIn", "fadeInDown", "fadeInDownBig", "fadeInLeft", "fadeInLeftBig", "fadeInRight", "fadeInRightBig", "fadeInUp", "fadeInUpBig", "fadeInTopLeft", "fadeInTopRight", "fadeInBottomLeft", "fadeInBottomRight"),



    fading_exits =   c("fadeOut", "fadeOutDown", "fadeOutDownBig", "fadeOutLeft", "fadeOutLeftBig", "fadeOutRight", "fadeOutRightBig", "fadeOutUp", "fadeOutUpBig", "fadeOutTopLeft", "fadeOutTopRight", "fadeOutBottomRight", "fadeOutBottomLeft"),


    flippers = c("flip", "flipInX", "flipInY", "flipOutX", "flipOutY"),


    lightspeed = c("lightSpeedInRight", "lightSpeedInLeft", "lightSpeedOutRight", "lightSpeedOutLeft"),


    rotating_entrances = c("rotateIn", "rotateInDownLeft", "rotateInDownRight", "rotateInUpLeft", "rotateInUpRight"),


    rotating_exits = c("rotateOut", "rotateOutDownLeft", "rotateOutDownRight", "rotateOutUpLeft", "rotateOutUpRight"),


    specials = c("hinge", "jackInTheBox", "rollIn", "rollOut"),


    zooming_entrances =  c("zoomIn", "zoomInDown", "zoomInLeft", "zoomInRight", "zoomInUp"),

    zooming_exits = c("zoomOut", "zoomOutDown", "zoomOutLeft", "zoomOutRight", "zoomOutUp"),


    sliding_entrances =  c("slideInDown", "slideInLeft", "slideInRight", "slideInUp"),


    sliding_exits = c("slideOutDown", "slideOutLeft", "slideOutRight", "slideOutUp")


  )






}
