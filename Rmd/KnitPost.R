KnitPost <- function(input, base.url = "/") {
    require(knitr)
    require(lubridate)
    
    opts_knit$set(base.url = base.url)
    in.file <- sub(".Rmd$", "", basename(input))
    fig.path <- paste0("../figs/", in.file, "/")
    opts_chunk$set(fig.path = fig.path)
    opts_chunk$set(fig.cap = "center")
    
    # Set the theme
    #thm = knit_theme$get("solarized-dark")
    #knit_theme$set(thm)
    
    render_jekyll()
    out.file <- paste0("../_posts/", today(), "-", in.file, ".md")
    
    knit(input, output = out.file, envir = parent.frame())
}

KnitPost("testrmd.Rmd")