#!/bin/bash

set -e

R -e "try(remove.packages(pkgs = 'manCTMed'))"

R CMD INSTALL manCTMed_1.0.8.tar.gz

R -e "library(manCTMed)"

echo -e "\nInstall manCTMed, done!"
