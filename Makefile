# Makefile untuk template skripsi IPB
# Penggunaan:
#   make          → compile main.tex ke main.pdf
#   make clean    → hapus file sementara
#   make cleanall → hapus semua file hasil compile termasuk PDF

.PHONY: all clean cleanall

all:
	latexmk -pdf -bibtex main.tex

clean:
	latexmk -c

cleanall:
	latexmk -C
