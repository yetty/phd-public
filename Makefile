

prepare:
	Rscript -e 'install.packages("bookdown", repos = "https://cloud.r-project.org/")'

serve:
	Rscript -e 'bookdown::serve_book(dir = ".", output_dir = "_book", port = 9999, host = "0.0.0.0")'

build:
	Rscript -e 'bookdown::render_book("index.Rmd")'