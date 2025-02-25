#!/bin/bash

set -euxo pipefail

TIMESTAMP="$(date +%Y%m%d%H%M)"
COMPANY="${1:-generic}"

# build the resume
pdflatex main.tex

# clean up intermediate steps
mkdir -p out
mv ./*.out ./*.log ./*.aux out/

# render the newly built resume
pgrep okular || okular main.pdf &

# create a release file
cp main.pdf "Isaac_Rhett_${TIMESTAMP}_${COMPANY}.pdf"
