KnitPost <- function(input, base.url = "/") {
    require(knitr)
    require(lubridate)
    opts_knit$set(base.url = base.url)
    infilename <- sub(".Rmd$", "", basename(input))
    fig.path <- paste0("../figs/", infilename, "/")
    opts_chunk$set(fig.path = fig.path)
    opts_chunk$set(fig.cap = "center")
    render_jekyll()
    out.file <- paste0("../_posts/", today(), "-", infilename, ".md")
    knit(input, output = out.file, envir = parent.frame())
}