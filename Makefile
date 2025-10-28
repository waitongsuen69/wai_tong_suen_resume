RST=resume.rst
BUILD_DIR=build
HTML_OUTPUT=$(BUILD_DIR)/resume.html
PDF_OUTPUT=$(BUILD_DIR)/resume.pdf
STYLE=styles/resume.style
CSS=styles/resume.css
VENV_BIN=.venv/bin

.PHONY: all html pdf clean

all: html pdf

html: $(HTML_OUTPUT)

$(HTML_OUTPUT): $(RST) $(CSS)
	mkdir -p $(BUILD_DIR)
	$(VENV_BIN)/rst2html5 --stylesheet-inline=$(CSS) $(RST) $(HTML_OUTPUT)

pdf: $(PDF_OUTPUT)

$(PDF_OUTPUT): $(RST) $(STYLE)
	mkdir -p $(BUILD_DIR)
	$(VENV_BIN)/rst2pdf $(RST) -o $(PDF_OUTPUT) -s $(STYLE)

clean:
	rm -rf $(BUILD_DIR)
