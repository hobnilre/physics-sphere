ARTICLE := article.md
PDF := build/physics-sphere.pdf

.PHONY: pdf clean

pdf: $(PDF)

$(PDF): $(ARTICLE)
	mkdir -p $(dir $@)
	pandoc $(ARTICLE) \
		--from markdown+tex_math_dollars \
		--pdf-engine=xelatex \
		-o $@

clean:
	rm -rf build
