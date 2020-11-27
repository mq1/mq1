pdf: cv.md me.jpg qr.png
	pandoc cv.md --pdf-engine=lualatex -o public/cv.pdf