#!/bin/bash

set -e

R -e "remotes::install_version(package = 'MASS', version = '7.3-60.2')"
