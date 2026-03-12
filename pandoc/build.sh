#!/usr/bin/env bash

pandoc resume.md -o resume.pdf --pdf-engine=xelatex

# set -euo pipefail

# # Build resume (pandoc variant) into ../build
# # Usage: ./build.sh [all|pdf|html|clean]

# SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# ROOT_DIR="${SCRIPT_DIR%/pandoc}"
# OUT_DIR="$ROOT_DIR/build"
# SRC_MD="$SCRIPT_DIR/resume.md"

# usage() {
#   echo "Usage: $(basename "$0") [all|pdf|html|clean]" >&2
#   exit 1
# }

# need() {
#   if ! command -v "$1" >/dev/null 2>&1; then
#     echo "Error: required command '$1' not found in PATH" >&2
#     exit 127
#   fi
# }

# build_html() {
#   need pandoc
#   mkdir -p "$OUT_DIR"
#   echo "[pandoc] Building HTML -> $OUT_DIR/resume_pandoc.html"
#   pandoc "$SRC_MD" \
#     -s \
#     -o "$OUT_DIR/resume_pandoc.html" \
#     --metadata title="Waiton Suen — Resume"
# }

# build_pdf() {
#   need pandoc
#   if ! command -v xelatex >/dev/null 2>&1; then
#     echo "Warning: 'xelatex' not found. Install a TeX distribution (e.g., MacTeX/TeX Live)." >&2
#     echo "Attempting PDF build may fail without it." >&2
#   fi
#   mkdir -p "$OUT_DIR"
#   echo "[pandoc] Building PDF (xelatex) -> $OUT_DIR/resume_pandoc.pdf"
#   pandoc "$SRC_MD" \
#     -o "$OUT_DIR/resume_pandoc.pdf" \
#     --pdf-engine=xelatex
# }

# clean_outputs() {
#   rm -f "$OUT_DIR"/resume_pandoc.{html,pdf}
#   echo "[pandoc] Cleaned $OUT_DIR/resume_pandoc.{html,pdf}"
# }

# target="${1:-all}"
# case "$target" in
#   html) build_html ;;
#   pdf) build_pdf ;;
#   all) build_html; build_pdf ;;
#   clean) clean_outputs ;;
#   *) usage ;;
# esac

# echo "[pandoc] Done. Outputs in $OUT_DIR"

