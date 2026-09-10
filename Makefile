ARTICLE  := article.md
PREAMBLE := preamble.tex
FIGURES  := figures/measurement-setup.png
PDF      := build/physics-sphere.pdf

.PHONY: pdf clean

pdf: $(PDF)

$(PDF): $(ARTICLE) $(PREAMBLE) $(FIGURES)
	mkdir -p $(dir $@)
	pandoc $(ARTICLE) \
		--from markdown+tex_math_dollars \
		--pdf-engine=xelatex \
		--include-in-header=$(PREAMBLE) \
		-o $@

clean:
	rm -rf build
