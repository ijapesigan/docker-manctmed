#!/bin/bash

set -e

bash github.sh
bash rproject.sh
bash dynr_sys.sh
bash dynr.sh
bash simstatespace.sh
bash dynutils.sh
bash ctmed.sh
bash manctmed.sh
bash tinytex.sh
bash custom.sh
bash post.sh
