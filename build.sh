#!/bin/bash

set -euxo pipefail

pdflatex main.tex

mv *.out *.log *.aux out/

ps -ax | grep -i okular | grep -v grep || okular main.pdf &

