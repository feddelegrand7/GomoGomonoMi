
<!-- README.md is generated from README.Rmd. Please edit that file -->

# coconut

<!-- badges: start -->

<!-- badges: end -->

The coconut packages allows you to animate text in Rmd documents
(xaringan slides included) and Shiny apps using the
[Animate.css](https://animate.style/) library.

## Installation

You can install the development version of coconut from Github with:

``` r

install.packages("remotes")

remotes::install_github("feddelegrand7/coconut")
```

## How to use it ?

Put the `use_coco()` function at the beginning of your Rmd document
(works also with xaringan slides) or Shiny application (at the UI):

``` r

library(coconut)

use_coco()
```

<!--html_preserve-->

<head>

<link
  rel='stylesheet'
  href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css'
/>

</head>

<!--/html_preserve-->

Then you can animate your text using the `coconut()` function. Don’t
hesitate to use `help("cocunut")` to check out additional arguments.

> The Github README doesn’t allow for animation but it should work on
> your RMarkdown document or Shiny app.

``` r

coconut(text = "What comes first: filter or select ?!!!", level = "###", animation = "bounce")
```

<!--html_preserve-->

<h3 class="animate__animated animate__bounce animate__repeat-1 animate__delay-0s animate__slow">

What comes first: filter or select ?\!\!\!

</h3>

<!--/html_preserve-->

For a listing of all the available animations provided by the
**Animate.css** library, use the following function:

``` r

available_animations()
#> $attention_seekers
#>  [1] "bounce"     "flash"      "pulse"      "rubberBand" "shakeX"    
#>  [6] "shakeY"     "headShake"  "swing"      "tada"       "wobble"    
#> [11] "jello"      "heartBeat" 
#> 
#> $back_entrances
#> [1] "backInDown"  "backInLeft"  "backInRight" "backInUp"   
#> 
#> $back_exits
#> [1] "backOutDown"  "backOutLeft"  "backOutRight" "backOutUp"   
#> 
#> $bouncing_entrances
#> [1] "bounceIn"      "bounceInDown"  "bounceInLeft"  "bounceInRight"
#> [5] "bounceInUp"   
#> 
#> $bouncing_exits
#> [1] "bounceOut"      "bounceOutDown"  "bounceOutLeft"  "bounceOutRight"
#> [5] "bounceOutUp"   
#> 
#> $fading_entrances
#>  [1] "fadeIn"            "fadeInDown"        "fadeInDownBig"    
#>  [4] "fadeInLeft"        "fadeInLeftBig"     "fadeInRight"      
#>  [7] "fadeInRightBig"    "fadeInUp"          "fadeInUpBig"      
#> [10] "fadeInTopLeft"     "fadeInTopRight"    "fadeInBottomLeft" 
#> [13] "fadeInBottomRight"
#> 
#> $fading_exits
#>  [1] "fadeOut"            "fadeOutDown"        "fadeOutDownBig"    
#>  [4] "fadeOutLeft"        "fadeOutLeftBig"     "fadeOutRight"      
#>  [7] "fadeOutRightBig"    "fadeOutUp"          "fadeOutUpBig"      
#> [10] "fadeOutTopLeft"     "fadeOutTopRight"    "fadeOutBottomRight"
#> [13] "fadeOutBottomLeft" 
#> 
#> $flippers
#> [1] "flip"     "flipInX"  "flipInY"  "flipOutX" "flipOutY"
#> 
#> $lightspeed
#> [1] "lightSpeedInRight"  "lightSpeedInLeft"   "lightSpeedOutRight"
#> [4] "lightSpeedOutLeft" 
#> 
#> $rotating_entrances
#> [1] "rotateIn"          "rotateInDownLeft"  "rotateInDownRight"
#> [4] "rotateInUpLeft"    "rotateInUpRight"  
#> 
#> $rotating_exits
#> [1] "rotateOut"          "rotateOutDownLeft"  "rotateOutDownRight"
#> [4] "rotateOutUpLeft"    "rotateOutUpRight"  
#> 
#> $specials
#> [1] "hinge"        "jackInTheBox" "rollIn"       "rollOut"     
#> 
#> $zooming_entrances
#> [1] "zoomIn"      "zoomInDown"  "zoomInLeft"  "zoomInRight" "zoomInUp"   
#> 
#> $zooming_exits
#> [1] "zoomOut"      "zoomOutDown"  "zoomOutLeft"  "zoomOutRight" "zoomOutUp"   
#> 
#> $sliding_entrances
#> [1] "slideInDown"  "slideInLeft"  "slideInRight" "slideInUp"   
#> 
#> $sliding_exits
#> [1] "slideOutDown"  "slideOutLeft"  "slideOutRight" "slideOutUp"
```

# Example

This is an example of a Shiny app that uses `coconut`

``` r

library(shiny)
library(coconut)

ui <- fluidPage(use_coco(), 
                
                
  coconut(text = "HELLO SHINY !!!!", level = "#", animation = "backInDown", duration = "slower")
            

)

server <- function(input, output) {


}

shinyApp(ui = ui, server = server)
```
