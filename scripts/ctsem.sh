#!/bin/bash

set -e

R -e "install.packages('simStateSpace')"

R -e "remotes::install_version(                                \
    package = 'ctsem',                                         \
    version = '3.9.1',                                         \
    repos = 'https://packagemanager.rstudio.com/all/latest'    \
)"
