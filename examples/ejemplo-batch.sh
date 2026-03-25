#!/usr/bin/env bash
# ============================================================
# Ejemplo: Uso de md2pdf en modo batch
# Autor: Donshu
# ============================================================
# Ejemplo 1: Convertir todos los archivos .md en docs/ a PDFs en pdfs/
echo "Ejemplo 1: Batch desde directorio"
md2pdf --batch ./docs/ -o ./pdfs/
# Ejemplo 2: Convertir archivos específicos
echo "Ejemplo 2: Batch con archivos específicos"
md2pdf --batch README.md CHANGELOG.md CONTRIBUTING.md -o ./pdfs/
# Ejemplo 3: Usando wildcard con shell expansion
echo "Ejemplo 3: Batch con wildcard"
md2pdf --batch capitulo-*.md -o ./libro/ -f "Times New Roman"
# Ejemplo 4: Procesamiento recursivo con find
echo "Ejemplo 4: Procesamiento recursivo"
find . -name "*.md" -not -path "./node_modules/*" -exec md2pdf {} \; -o ./output/
