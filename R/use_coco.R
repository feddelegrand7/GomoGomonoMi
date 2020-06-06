
#' Enable the animate.css library
#' @description The function activates the capabilities of the animate.css library using its CDN. It should be run at the beginning of the document.
#' @return called for the side effect of activating the animate.css library
#' @export
#'
#' @examples \dontrun{
#'
#' # Put the function at the beginning of the document
#'
#' use_coco()
#'
#'
#'
#' }


use_coco <- function(){

  htmltools::HTML(glue::glue(

    "

    <head>

  <link
    rel='stylesheet'
    href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css'
  />

  </head>


  "


  )

  )





}
