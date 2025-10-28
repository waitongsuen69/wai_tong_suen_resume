PDF_OUTPUT=$(BUILD_DIR)/resume.pdf
STYLE=styles/resume.style
CSS=styles/resume.css


.PHONY: all html pdf clean

@@ -13,14 +14,13 @@ html: $(HTML_OUTPUT)

$(HTML_OUTPUT): $(RST) $(CSS)
	mkdir -p $(BUILD_DIR)
	cp $(CSS) $(BUILD_DIR)/resume.css
	rst2html5 --embed-stylesheet --stylesheet-path=$(CSS) $(RST) $(HTML_OUTPUT)

pdf: $(PDF_OUTPUT)

$(PDF_OUTPUT): $(RST) $(STYLE)
	mkdir -p $(BUILD_DIR)
	rst2pdf $(RST) -o $(PDF_OUTPUT) -s $(STYLE)

clean:
	rm -rf $(BUILD_DIR)