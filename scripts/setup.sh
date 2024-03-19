#!/bin/bash

set -e

bash rproject.sh
bash github.sh
bash dynr_sys.sh
bash dynr.sh
bash ctsem.sh
bash simstatespace.sh
bash dynutils.sh
bash ctmed.sh
bash manctmed.sh
bash custom.sh
bash post.sh
