#!/usr/bin/bash

pushd $1

pdflatex main;
bibtex main;
makeglossaries main;
makeindex -s main.ist -o main.gls main.glo;
pdflatex main;
pdflatex main;

popd;
