# Automate the making of the package
# Steps:
# 1) Download the binary distribution poi-bin-3.6-20091214.zip (or newer) and extract
# 2) Copy the jars from the poi-3.6/ folder into java/inst
# 3) Copy the jars from the poi-3.6/ooxml-lib/ into java/inst
# 4) 

##################################################################
#
.setEnv <- function(computer=c("HOME", "LAPTOP", "WORK"))
{
  if (computer=="WORK") {
    ## pkgdir  <<- "H:/user/R/Adrian/findataweb/temp/xlsxjars/trunk/"
    ## outdir  <<- "H:/"
    ## Rcmd    <<- "S:/All/Risk/Software/R/R-2.12.1/bin/i386/Rcmd"
  } else if (computer == "LAPTOP") {
    pkgdir  <<- "/home/adrian/Documents/repos/google/findataweb/temp/xlsxjars/trunk/"
    outdir  <<- "/tmp/"
    Rcmd    <<- "R CMD"
  } else if (computer == "HOME") {
    pkgdir    <<- "/home/adrian/Documents/repos/github/dragua/xlsxjars/"
    outdir    <<- "/tmp/"
    Rcmd      <<- "R CMD"
  } else {
      
  }

  invisible()
}



##################################################################
##################################################################

version <- "0.8.0"     # POI 3.13

.setEnv("HOME")   # "LAPTOP", "HOME"


# make the package
setwd(outdir)
cmd <- paste(Rcmd, "build --force --md5", pkgdir)
print(cmd)
system(cmd)

package.gz <- paste(outdir, "xlsxjars_", version,".tar.gz", sep="")
install.packages(package.gz, repos=NULL, type="source")


# make the source for CRAN
cmd <- paste(Rcmd, "build", pkgdir)
print(cmd); system(cmd)


# check as CRAN
cmd <- paste(Rcmd, "check --as-cran", package.gz)
print(cmd); system(cmd)

