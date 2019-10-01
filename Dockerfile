## Start with the shiny docker image
FROM rocker/tidyverse:latest

MAINTAINER "Sam Abbott" contact@samabbott.co.uk

ADD . /home/rstudio/cv

WORKDIR /home/rstudio/cv
## Install dev deps
RUN Rscript scripts/install.R

## Install the getTBinR
RUN Rscript -e 'tinytex::install_tinytex()'