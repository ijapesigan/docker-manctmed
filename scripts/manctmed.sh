#!/bin/bash

set -e

R -e "try(remove.packages(pkgs = 'manCTMed'))"

R CMD INSTALL manCTMed_0.9.1.tar.gz
