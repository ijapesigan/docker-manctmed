#!/bin/bash

set -e

R -e "install.packages('simStateSpace')"

R -e "remotes::install_version(                                \
    package = 'simStateSpace',                                 \
    version = '1.2.1',                                         \
    repos = 'https://packagemanager.rstudio.com/all/latest'    \
)"

R -e "library(simStateSpace)"

echo -e "\nInstall simStateSpace, done!"
