@echo off
cd /d "%~dp0"
quarto render cv/cv.qmd
copy /Y docs\cv\Matsumiya_CV.pdf files\Matsumiya_CV.pdf
quarto publish gh-pages --no-prompt
pause