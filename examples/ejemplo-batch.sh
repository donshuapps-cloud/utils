#!/usr/bin/env bash
# ============================================================
# Ejemplo: Uso de md2pdf en modo batch
# Autor: Donshu
# Contacto: donshu.apps@gmail.com
# GitHub: https://github.com/donshuapps-cloud
# ============================================================
echo "╔══════════════════════════════════════════════════════════════╗"
echo "║         Ejemplos de uso - md2pdf (Modo Batch)                ║"
echo "╚══════════════════════════════════════════════════════════════╝"
echo ""
# Ejemplo 1: Convertir todos los archivos .md en docs/ a PDFs en pdfs/
echo "Ejemplo 1: Batch desde directorio"
echo "  md2pdf --batch ./docs/ -o ./pdfs/"
echo ""
# Ejemplo 2: Convertir archivos específicos
echo "Ejemplo 2: Batch con archivos específicos"
echo "  md2pdf --batch README.md CHANGELOG.md CONTRIBUTING.md -o ./pdfs/"
echo ""
# Ejemplo 3: Usando wildcard con shell expansion
echo "Ejemplo 3: Batch con wildcard"
echo "  md2pdf --batch capitulo-*.md -o ./libro/ -f \"Times New Roman\""
echo ""
# Ejemplo 4: Procesamiento recursivo con find
echo "Ejemplo 4: Procesamiento recursivo"
echo "  find . -name \"*.md\" -not -path \"./node_modules/*\" -exec md2pdf {} \\; -o ./output/"
echo ""
# Ejemplo 5: Batch con verificación de dependencias
echo "Ejemplo 5: Verificar dependencias antes del batch"
echo "  md2pdf --check-deps && md2pdf --batch ./docs/"
echo ""
# Ejemplo 6: Batch con engine alternativo para SVG
echo "Ejemplo 6: Batch con lualatex para mejor soporte SVG"
echo "  md2pdf --batch ./docs/ -e lualatex -o ./pdfs/"
echo ""
# Ejemplo 7: Batch en modo verbose
echo "Ejemplo 7: Batch en modo verbose"
echo "  md2pdf --batch ./docs/ -v -o ./pdfs/"
echo ""
echo "Para más información: md2pdf --help"
