# Wai Tong Suen - Resume

This repository maintains two resume variants in Markdown and builds them with Pandoc:

- **Software Engineering** - backend services, APIs, web platforms, and systems software.
- **Embedded Systems** - C++, SystemC, virtual platforms, simulation, and validation.

Both variants share the same A4 PDF styling and responsive HTML presentation.

## Requirements

- [Pandoc](https://pandoc.org/)
- A TeX distribution containing LuaLaTeX and TeX Gyre fonts, such as TeX Live or MacTeX

On macOS, MacTeX provides the complete PDF toolchain:

```sh
brew install pandoc
brew install --cask mactex
```

## Build

```sh
make all        # Build the complete website and both PDFs
make html       # Build index.html and both online resume pages
make pdf        # Build both A4 PDFs
make software   # Build only the Software HTML and PDF
make embedded   # Build only the Embedded HTML and PDF
make clean      # Remove generated files
```

Generated files are written to `build/`:

- `index.html`
- `software.html`
- `embedded.html`
- `resume-software.pdf`
- `resume-embedded.pdf`

## Project structure

- `resumes/` contains the two independently tailored Markdown sources.
- `metadata.yaml` contains shared contact information.
- `filters/resume.lua` converts semantic resume entries into format-specific layout.
- `templates/` contains the PDF and website templates.
- `styles/resume.css` provides the responsive website styling.
- `Makefile` is the single build entry point.

Edit resume content in Markdown. Use `.resume-entry` fenced divs for experience and education headers so the shared filter can render them consistently in HTML and PDF.
