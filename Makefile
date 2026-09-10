ARTICLE  := planet-radius-with-two-rulers.md
PREAMBLE := preamble.tex
FIGURES  := figures/measurement-setup.png
PDF      := planet-radius-with-two-rulers.pdf

.PHONY: pdf clean

pdf: $(PDF)

$(PDF): $(ARTICLE) $(PREAMBLE) $(FIGURES) Makefile
	pandoc $(ARTICLE) \
		--from markdown+tex_math_dollars \
		--pdf-engine=xelatex \
		--include-in-header=$(PREAMBLE) \
		-o $@

clean:
	rm -rf build
