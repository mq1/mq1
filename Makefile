pdf: cv.md me.jpg qr.png
	pandoc quarno.md -f markdown+latex_macros --pdf-engine=lualatex -o public/cv.pdf