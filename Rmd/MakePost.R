MakePost <- function(title){
    require(lubridate)
    filename <- paste0(today(), "-", title, ".Rmd")
    outtext <- paste(gsub("default", title, readLines("default.txt")), collapse="\n")
    cat(outtext, file = filename)
}