MakePost <- function(title){
    require(lubridate)
    setwd("~/github/Dasonk.github.com/Rmd")
    filename <- paste0(today(), "-", title, ".Rmd")
    outtext <- paste(gsub("default", title, readLines("default.txt")), collapse="\n")
    cat(outtext, file = filename)
}