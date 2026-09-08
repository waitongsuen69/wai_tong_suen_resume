PANDOC ?= pandoc
PDF_ENGINE ?= lualatex

BUILD_DIR := build
METADATA := metadata.yaml
FILTER := filters/resume.lua
PDF_TEMPLATE := templates/resume.tex
HTML_TEMPLATE := templates/site.html
CSS := styles/resume.css

SOFTWARE_SOURCE := resumes/software.md
EMBEDDED_SOURCE := resumes/embedded.md
INDEX_SOURCE := site/index.md

SOFTWARE_PDF := $(BUILD_DIR)/resume-software.pdf
EMBEDDED_PDF := $(BUILD_DIR)/resume-embedded.pdf
SOFTWARE_HTML := $(BUILD_DIR)/software.html
EMBEDDED_HTML := $(BUILD_DIR)/embedded.html
INDEX_HTML := $(BUILD_DIR)/index.html

COMMON_FLAGS := --from=markdown+fenced_divs --metadata-file=$(METADATA) --lua-filter=$(FILTER)
PDF_FLAGS := $(COMMON_FLAGS) --template=$(PDF_TEMPLATE) --pdf-engine=$(PDF_ENGINE)
HTML_FLAGS := $(COMMON_FLAGS) --standalone --embed-resources --template=$(HTML_TEMPLATE) --css=$(CSS)

.PHONY: all html pdf software embedded clean

all: html pdf

html: $(INDEX_HTML) $(SOFTWARE_HTML) $(EMBEDDED_HTML)

pdf: $(SOFTWARE_PDF) $(EMBEDDED_PDF)

software: $(SOFTWARE_HTML) $(SOFTWARE_PDF)

embedded: $(EMBEDDED_HTML) $(EMBEDDED_PDF)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(INDEX_HTML): $(INDEX_SOURCE) $(METADATA) $(HTML_TEMPLATE) $(CSS) | $(BUILD_DIR)
	$(PANDOC) $(INDEX_SOURCE) $(HTML_FLAGS) -o $@

$(SOFTWARE_HTML): $(SOFTWARE_SOURCE) $(METADATA) $(FILTER) $(HTML_TEMPLATE) $(CSS) | $(BUILD_DIR)
	$(PANDOC) $(SOFTWARE_SOURCE) $(HTML_FLAGS) -o $@

$(EMBEDDED_HTML): $(EMBEDDED_SOURCE) $(METADATA) $(FILTER) $(HTML_TEMPLATE) $(CSS) | $(BUILD_DIR)
	$(PANDOC) $(EMBEDDED_SOURCE) $(HTML_FLAGS) -o $@

$(SOFTWARE_PDF): $(SOFTWARE_SOURCE) $(METADATA) $(FILTER) $(PDF_TEMPLATE) | $(BUILD_DIR)
	$(PANDOC) $(SOFTWARE_SOURCE) $(PDF_FLAGS) -o $@

$(EMBEDDED_PDF): $(EMBEDDED_SOURCE) $(METADATA) $(FILTER) $(PDF_TEMPLATE) | $(BUILD_DIR)
	$(PANDOC) $(EMBEDDED_SOURCE) $(PDF_FLAGS) -o $@

clean:
	rm -rf $(BUILD_DIR)
