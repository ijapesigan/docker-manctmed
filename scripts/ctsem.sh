#!/bin/bash

set -e

R -e "install.packages('ctsem')"

R -e "remotes::install_version(                                \
    package = 'ctsem',                                         \
    version = '3.10.0',                                        \
    repos = 'https://packagemanager.rstudio.com/all/latest'    \
)"

R -e "library(ctsem)"

echo -e "\nInstall ctsem, done!"
