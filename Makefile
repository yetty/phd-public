

BOOK_SRC = index.Rmd
BOOK_OUT = docs
CNAME = phd.judakaleta.cz

.PHONY: prepare bib serve build site clean ghpages

prepare:
	Rscript -e 'install.packages("bookdown", repos = "https://cloud.r-project.org/")'

bib:
	cd /Users/yetty/Documents/PhD; /Users/yetty/Projects/md2bibtex/.venv/bin/python /Users/yetty/Projects/md2bibtex/md2bibtex.py
	cp /Users/yetty/Documents/PhD/bibliography.bib ./references.bib

serve:
	Rscript -e 'bookdown::serve_book(dir = ".", output_dir = "_book", port = 9999, host = "0.0.0.0")'

build:
	Rscript -e 'bookdown::render_book("$(BOOK_SRC)", "bookdown::gitbook")'

site: build
	@# ensure CNAME exists for custom domain
	echo "$(CNAME)" > $(BOOK_OUT)/CNAME
	@# prevent Jekyll processing
	touch $(BOOK_OUT)/.nojekyll

clean:
	rm -rf $(BOOK_OUT)

ghpages: site
	@# publish only docs/ to gh-pages branch
	git subtree push --prefix $(BOOK_OUT) origin gh-pages