#!/bin/bash

set -e

# R -e "remotes::install_github(      \
#     c(                              \
#         'jeksterslab/manCTMed'      \
#     )                               \
# )"

R CMD INSTALL manCTMed_0.9.1.tar.gz
