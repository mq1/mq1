all: pdf

pdf: cv.md me.jpg qr.png
	mkdir -p public
	pandoc cv.md --pdf-engine=lualatex -o public/cv.pdf

.PHONY: clean

clean:
	-rm -rf public/*.pdf