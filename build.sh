#!/bin/bash

set -euxo pipefail

pdflatex main.tex

mv *.out *.log *.aux out/
cp *.pdf pdf/

okular main.pdf &

