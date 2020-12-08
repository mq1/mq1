all: pdf clean

pdf: cv.tex me.jpg
	mkdir -p public
	lualatex --shell-escape cv.tex
	mv cv.pdf public

.PHONY: clean

clean:
	-rm *.aux *.fdb_latexmk *.fls *.log *.out *.pdf *.synctex.gz
	-rm -rf svg-inkscape
