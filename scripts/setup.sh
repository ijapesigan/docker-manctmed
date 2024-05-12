#!/bin/bash

set -e

bash rproject.sh
bash tinytex.sh
bash mass.sh
bash dynr_sys.sh
bash dynr.sh
bash simstatespace.sh
bash dynutils.sh
bash ctsem.sh
bash ctmed.sh
bash manctmed.sh
bash custom.sh
bash post.sh
