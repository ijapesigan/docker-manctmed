#!/bin/bash

set -e

R -e "try(remove.packages(pkgs = 'bootStateSpace'))"

R CMD INSTALL bootStateSpace_1.0.2.tar.gz

R -e "library(bootStateSpace)"

echo -e "\nInstall bootStateSpace, done!"
