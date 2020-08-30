public:
	mkdir -p public

html: public README.md
	cp style.css public
	pandoc -s -c style.css --metadata title="Manuel Quarneti" -o public/index.html README.md

pdf: public README.md
	pandoc -s -c style.css --metadata title="Manuel Quarneti" --pdf-engine=wkhtmltopdf -V margin-left=1cm -V margin-right=1cm -V margin-top=1cm -V margin-bottom=1cm -H header.html -o public/quarno.pdf README.md

all: html pdf
