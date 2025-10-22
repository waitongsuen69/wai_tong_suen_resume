RST=resume.rst
BUILD_DIR=build
HTML_OUTPUT=$(BUILD_DIR)/resume.html
PDF_OUTPUT=$(BUILD_DIR)/resume.pdf
STYLE=styles/resume.style

.PHONY: all html pdf clean

all: html pdf

html: $(HTML_OUTPUT)

$(HTML_OUTPUT): $(RST)
	mkdir -p $(BUILD_DIR)
	rst2html5 $(RST) $(HTML_OUTPUT)

pdf: $(PDF_OUTPUT)

$(PDF_OUTPUT): $(RST) $(STYLE)
	mkdir -p $(BUILD_DIR)
	rst2pdf $(RST) -o $(PDF_OUTPUT) -s $(STYLE)

clean:
	rm -rf $(BUILD_DIR)
