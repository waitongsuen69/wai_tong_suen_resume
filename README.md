# Wai Tong Suen — Resume 

This repository provides a lightweight reStructuredText (reST) setup for maintaining your resume in plain text while exporting to HTML and PDF.

## Getting started

1. Create a Python virtual environment (optional but recommended).
2. Install dependencies:
   ```bash
   python3 -m venv .venv && source .venv/bin/activate  # Windows: .venv\Scripts\activate
   pip install -r requirements.txt
   ```
3. Edit `resume.rst` with your personal information.
4. Build the outputs:
   ```bash
   make html    # Generates build/resume.html
   make pdf     # Generates build/resume.pdf
   ```

## Project structure

- `resume.rst` — Main resume content written in reStructuredText.
- `styles/resume.style` — `rst2pdf` style configuration that controls layout, fonts, and spacing for the PDF export.
- `Makefile` — Handy shortcuts for building HTML and PDF outputs into the `build/` directory.
- `requirements.txt` — Python packages required for generation (`docutils` and `rst2pdf`).
