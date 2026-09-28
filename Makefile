ARTICLE  := planet-radius-with-two-rulers.md
PREAMBLE := preamble.tex
FIGURES  := figures/measurement-setup.png
PDF      := planet-radius-with-two-rulers.pdf

.PHONY: pdf clean

pdf: $(PDF)

$(PDF): $(ARTICLE) $(PREAMBLE) $(FIGURES) Makefile
	mkdir -p build
	printf '\\newcommand{\\pdfbuildtimestamp}{%s}\n' "$$(date -u '+%Y-%m-%d %H:%M:%S UTC')" > build/pdf-build-time.tex
	TMPDIR="$(CURDIR)/build" pandoc $(ARTICLE) \
		--from markdown+tex_math_dollars \
		--pdf-engine=xelatex \
		--include-in-header=$(PREAMBLE) --include-in-header=build/pdf-build-time.tex \
		-o $@

clean:
	rm -rf build
