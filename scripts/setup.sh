#!/bin/bash

set -e

bash github.sh
bash rproject.sh
bash mass.sh
bash dynr_sys.sh
bash dynr.sh
bash simstatespace.sh
bash dynutils.sh
bash ctmed.sh
bash manctmed.sh
bash custom.sh
bash post.sh
