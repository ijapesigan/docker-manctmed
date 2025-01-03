#!/bin/bash

set -e

R -e "try(remove.packages(pkgs = 'cTMed'))"

R CMD INSTALL cTMed_1.0.4.tar.gz

R -e "library(cTMed)"

echo -e "\nInstall cTMed, done!"
