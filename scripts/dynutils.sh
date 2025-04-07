#!/bin/bash

set -e

R -e "try(remove.packages(pkgs = 'dynUtils'))"

R CMD INSTALL dynUtils_0.9.1.tar.gz

R -e "library(dynUtils)"

echo -e "\nInstall dynUtils, done!"
