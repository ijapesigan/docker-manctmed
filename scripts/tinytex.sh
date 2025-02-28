#!/bin/bash

set -e

# tinytex
install2.r --error --skipinstalled -n -1 \
    tinytex

# try() to avoid errors on arm64
# https://github.com/rstudio/tinytex-releases/issues/37

# uninstall tinytex
R -e "                                       \
  try(                                       \
    tinytex::uninstall_tinytex(force = TRUE) \
  )                                          \
"

arch=$(uname -m)

if [[ "$arch" == "x86_64" ]]; then
  # install tinytex package
  R -e "                        \
    try(                        \
      tinytex::install_tinytex( \
        bundle = 'TinyTeX-2',   \
        force = TRUE,           \
        dir =  '/opt/TinyTeX'   \
      )                         \
    )                           \
  "
else
  # install tinytex package
  R -e "                        \
    try(                        \
      tinytex::install_tinytex( \
        bundle = 'TinyTeX-1',   \
        force = TRUE,           \
        dir =  '/opt/TinyTeX'   \
      )                         \
    )                           \
  "
fi

# Check tinytex
echo -e "Check tinytex...\n"
R -e "tinytex::is_tinytex()"
echo -e "\nInstall tinytex, done!"
