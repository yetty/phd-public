

prepare:
	Rscript -e 'install.packages("bookdown", repos = "https://cloud.r-project.org/")'

bib:
	cd /Users/yetty/Documents/PhD; /Users/yetty/Projects/md2bibtex/.venv/bin/python /Users/yetty/Projects/md2bibtex/md2bibtex.py
	cp /Users/yetty/Documents/PhD/bibliography.bib ./references.bib

serve:
	Rscript -e 'bookdown::serve_book(dir = ".", output_dir = "_book", port = 9999, host = "0.0.0.0")'

build:
	Rscript -e 'bookdown::render_book("index.Rmd", "bookdown::gitbook")'