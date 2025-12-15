#!/bin/bash

CSVS=rooms/*.csv

for f in $CSVS
do
    echo $f
    xelatex "\\newcommand{\\csvfile}{$f} \\input{barcode-gen}"
    bn=$(basename "$f")
    mv barcode-gen.pdf pages/${bn}.pdf
done
