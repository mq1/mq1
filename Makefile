public:
	mkdir -p public

html: public README.md
	cp style.css public
	pandoc -s -c style.css --metadata title="Manuel Quarneti" -o public/README.html README.md

pdf: public README.md
	pandoc -s -c style.css --metadata title="Manuel Quarneti" --pdf-engine=wkhtmltopdf -V margin-left=0 -V margin-right=0 -V margin-top=0 -V margin-bottom=0 -H header.html -o public/README.pdf README.md

all: html pdf
