#!/bin/bash

set -e

R -e "install.packages('simStateSpace')"

R -e "remotes::install_version(                                \
    package = 'simStateSpace',                                 \
    version = '1.2.0',                                      \
    repos = 'https://packagemanager.rstudio.com/all/latest'    \
)"
