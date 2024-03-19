#!/bin/bash

set -e

# R -e "remotes::install_github(      \
#     c(                              \
#         'jeksterslab/dynUtils'      \
#     )                               \
# )"

R CMD INSTALL dynUtils_0.0.0.9000.tar.gz
