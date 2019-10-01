# Sam Abbott's Curriculum Vitae

[![Travis-CI Build
Status](https://travis-ci.org/seabbs/cv.svg?branch=master)](https://travis-ci.org/seabbs/cv)

Academic CV built using R - updated automatically each week. See [here](https://www.samabbott.co.uk/cv/cv.pdf) for the full rendered CV. See below for repository structure, tool links and to dos. Please feel free to fork this repository for your own use but please let me know of any improvements that you make (so I can steal them).

## Structure

- `cv/cv.Rmd`: CV structure implemented as an [`{rmarkdown}`](https://rmarkdown.rstudio.com) document.
- `data/*.csv`: Data on each CV subcategory.
- `scripts/install.R`: Installs/loads all `R` dependencies using the [`{pacman}`](https://github.com/trinker/pacman) :package:.
- `Dockerfile`: Specifies the [docker](https://www.docker.com) environment. 
- `.travis.yml`: Specifies the remote building of the CV on [Travis CI](https://travis-ci.org).

## Tools

- The [`{vitae}`](https://docs.ropensci.org/vitae/) :package: is used to provide a CV template.
- [`{tidyverse}`](https://www.tidyverse.org) :tools: are used for data read in and manipulation.
- [`{here}`](https://here.r-lib.org) :package: for path management.
- [Travis CI](https://travis-ci.org) is used for building the CV each week
- [Docker](https://www.docker.com) and [Docker Hub](https://hub.docker.com) is used to ensure a reproducible environment

## To do

- [ ] Fix links
- [ ] Programmatic short/long academic CVs
- [ ] Non-academic CVs
- [ ] Improved list structure for the service section