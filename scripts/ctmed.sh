#!/bin/bash

set -e

# R -e "remotes::install_github(      \
#     c(                              \
#         'jeksterslab/cTMed'         \
#     )                               \
# )"

R CMD INSTALL cTMed_0.0.0.9000.tar.gz
