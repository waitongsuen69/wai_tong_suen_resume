Usage
-----

- Preferred: `./build.sh [all|pdf|html|clean]`
  - Outputs are written to `../build/` as `resume_pandoc.pdf` and `resume_pandoc.html`.

- Direct pandoc (manual): `pandoc resume.md -o resume.pdf --pdf-engine=xelatex`

PDF engine: install a TeX distribution if missing, e.g. `brew install --cask mactex` (macOS).
