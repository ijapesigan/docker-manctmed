#!/bin/bash

set -e

bash rproject.sh
bash simstatespace.sh
dynutils.sh
bash ctmed.sh
bash custom.sh
bash post.sh
