ARTICLE := planet-radius-with-two-rulers.md
PDF := planet-radius-with-two-rulers.pdf
PREAMBLE := preamble.tex
FIGURES := figures/measurement-setup.png
BUILD_DIR ?= build
BUILD_ABS := $(abspath $(BUILD_DIR))

.PHONY: pdf figures clean
pdf: $(PDF)
figures: $(FIGURES)

$(PDF): $(ARTICLE) $(PREAMBLE) $(FIGURES) Makefile
	mkdir -p "$(BUILD_ABS)"
	printf '\\newcommand{\\pdfbuildtimestamp}{%s}\n' "$$(date -u '+%Y-%m-%d %H:%M:%S UTC')" > "$(BUILD_ABS)/pdf-build-time.tex"
	TMPDIR="$(BUILD_ABS)" pandoc "$(ARTICLE)" --from markdown+tex_math_dollars \
		--pdf-engine=xelatex --include-in-header="$(PREAMBLE)" \
		--include-in-header="$(BUILD_ABS)/pdf-build-time.tex" -o "$@"

figures/%.pdf: figures/%.tex figures/figure-style.tex
	mkdir -p "$(BUILD_ABS)"
	cd figures && xelatex -interaction=nonstopmode -halt-on-error \
		-output-directory="$(BUILD_ABS)" "$*.tex" > /dev/null
	cp "$(BUILD_ABS)/$*.pdf" "$@"

clean:
	rm -rf -- "$(BUILD_ABS)"
