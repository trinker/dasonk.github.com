MakePost <- function(title){
    require(lubridate)
    oldwd <- getwd()
    setwd("~/github/Dasonk.github.com/Rmd")
    filename <- paste0(today(), "-", title, ".Rmd")
    outtext <- paste(gsub("default", title, readLines("default.txt")), collapse="\n")
    cat(outtext, file = filename)
    setwd(oldwd)
}