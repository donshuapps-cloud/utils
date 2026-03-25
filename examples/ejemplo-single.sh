#!/usr/bin/env bash
# ============================================================
# Ejemplo: Uso de md2pdf en modo individual
# Autor: Donshu
# Contacto: donshu.apps@gmail.com
# GitHub: https://github.com/donshuapps-cloud
# ============================================================
echo "╔══════════════════════════════════════════════════════════════╗"
echo "║        Ejemplos de uso - md2pdf (Modo Individual)            ║"
echo "╚══════════════════════════════════════════════════════════════╝"
echo ""
# Ejemplo 1: Conversión básica
echo "Ejemplo 1: Conversión básica"
echo "  md2pdf documento.md"
echo ""
# Ejemplo 2: Especificar directorio de salida
echo "Ejemplo 2: Especificar directorio de salida"
echo "  md2pdf -o ./pdfs documento.md"
echo ""
# Ejemplo 3: Cambiar fuente
echo "Ejemplo 3: Cambiar fuente"
echo "  md2pdf -f \"Times New Roman\" documento.md"
echo ""
# Ejemplo 4: Usar engine alternativo
echo "Ejemplo 4: Usar engine alternativo (lualatex para mejor soporte SVG)"
echo "  md2pdf -e lualatex documento-con-svg.md"
echo ""
# Ejemplo 5: Usar plantilla personalizada
echo "Ejemplo 5: Usar plantilla personalizada"
echo "  md2pdf -t mi-plantilla.latex documento.md"
echo ""
# Ejemplo 6: Modo verbose para depuración
echo "Ejemplo 6: Modo verbose para depuración"
echo "  md2pdf -v documento.md"
echo ""
# Ejemplo 7: Modo debug para ver errores completos
echo "Ejemplo 7: Modo debug para ver errores completos"
echo "  md2pdf --debug documento.md"
echo ""
# Ejemplo 8: Deshabilitar detección de BOM
echo "Ejemplo 8: Deshabilitar detección de BOM"
echo "  md2pdf --no-bom documento.md"
echo ""
# Ejemplo 9: Verificar dependencias
echo "Ejemplo 9: Verificar dependencias del sistema"
echo "  md2pdf --check-deps"
echo ""
# Ejemplo 10: Combinación de opciones
echo "Ejemplo 10: Combinación de opciones"
echo "  md2pdf -o ./pdfs -f \"Courier New\" -e lualatex -v documento.md"
echo ""
echo "Para más información: md2pdf --help"
