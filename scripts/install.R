# R packages --------------------------------------------------------------
if (!require(pacman)) install.packages("pacman"); library(pacman)

p_load(tinytex)
p_load_gh("ropenscilabs/vitae")
p_load(tidyverse)
p_load(lubridate)
p_load(here)
p_load(readxl)
p_load(glue)


# Get latex ---------------------------------------------------------------

## This needs to be run manually if LaTex is not installed locally.
##tinytex::install_tinytex()
