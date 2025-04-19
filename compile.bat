@echo off
mkdir bin
pdflatex -output-directory=bin template_final_report.tex
move bin\template_final_report.pdf template_final_report.pdf
