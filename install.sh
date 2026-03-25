#!/usr/bin/env bash
# ============================================================
# Script: install.sh
# Descripción: Instalador para utilidades Donshu Apps
# Autor: Donshu
# Contacto: donshu.apps@gmail.com
# GitHub: https://github.com/donshuapps-cloud
# Versión: 2.2.0
# ============================================================
set -euo pipefail
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m'
INSTALL_DIR="/usr/local/bin"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo -e "${CYAN}╔══════════════════════════════════════════════════════════════╗${NC}"
echo -e "${CYAN}║              Instalador - Utilidades Donshu Apps            ║${NC}"
echo -e "${CYAN}║                       md2pdf v2.2.0                          ║${NC}"
echo -e "${CYAN}╚══════════════════════════════════════════════════════════════╝${NC}"
echo ""
# Verificar permisos de sudo
if [[ ! -w "$INSTALL_DIR" ]]; then
    echo -e "${YELLOW}⚠ Se requieren permisos de administrador para instalar en $INSTALL_DIR${NC}"
    echo -e "${YELLOW}Usando sudo...${NC}"
    USE_SUDO=true
else
    USE_SUDO=false
fi
# Instalar md2pdf
echo -e "${GREEN}▶ Instalando md2pdf...${NC}"
if [[ -f "$SCRIPT_DIR/md2pdf" ]]; then
    if [[ "$USE_SUDO" == true ]]; then
        sudo cp "$SCRIPT_DIR/md2pdf" "$INSTALL_DIR/"
        sudo chmod +x "$INSTALL_DIR/md2pdf"
    else
        cp "$SCRIPT_DIR/md2pdf" "$INSTALL_DIR/"
        chmod +x "$INSTALL_DIR/md2pdf"
    fi
    echo -e "  ${GREEN}✓${NC} md2pdf instalado en $INSTALL_DIR/md2pdf"
else
    echo -e "  ${RED}✗${NC} No se encontró md2pdf en $SCRIPT_DIR"
    exit 1
fi
# Verificar instalación
echo ""
echo -e "${GREEN}✅ Instalación completada${NC}"
echo ""
echo -e "Para verificar: ${BLUE}md2pdf --help${NC}"
echo -e "Documentación: ${BLUE}cat $SCRIPT_DIR/README.md${NC}"
echo ""
# Verificar dependencias del sistema
echo -e "${YELLOW}Verificando dependencias del sistema...${NC}"
echo ""
# Pandoc
if command -v pandoc &> /dev/null; then
    echo -e "  ${GREEN}✓${NC} pandoc: $(pandoc --version | head -n1)"
else
    echo -e "  ${RED}✗${NC} pandoc: NO INSTALADO"
    echo -e "    Instalar con: ${BLUE}sudo apt install pandoc${NC}"
fi
# XeLaTeX
if command -v xelatex &> /dev/null; then
    echo -e "  ${GREEN}✓${NC} xelatex: disponible"
else
    echo -e "  ${RED}✗${NC} xelatex: NO INSTALADO"
    echo -e "    Instalar con: ${BLUE}sudo apt install texlive-xetex${NC}"
fi
# rsvg-convert (SVG)
if command -v rsvg-convert &> /dev/null; then
    echo -e "  ${GREEN}✓${NC} rsvg-convert: disponible"
else
    echo -e "  ${YELLOW}⚠${NC} rsvg-convert: NO INSTALADO (opcional para SVG)"
    echo -e "    Instalar con: ${BLUE}sudo apt install librsvg2-bin${NC}"
fi
# xxd (BOM detection)
if command -v xxd &> /dev/null; then
    echo -e "  ${GREEN}✓${NC} xxd: disponible"
else
    echo -e "  ${YELLOW}⚠${NC} xxd: NO INSTALADO (opcional para BOM)"
    echo -e "    Instalar con: ${BLUE}sudo apt install xxd${NC}"
fi
echo ""
echo -e "${CYAN}════════════════════════════════════════════════════════════════${NC}"
echo ""
echo -e "${GREEN}Comando para instalar todas las dependencias:${NC}"
echo -e "  ${BLUE}sudo apt update && sudo apt install pandoc texlive-xetex librsvg2-bin xxd -y${NC}"
echo ""
# Ejecutar verificación detallada
echo -e "${YELLOW}Ejecutando verificación detallada con md2pdf --check-deps...${NC}"
echo ""
if [[ "$USE_SUDO" == true ]]; then
    sudo md2pdf --check-deps 2>/dev/null || true
else
    md2pdf --check-deps 2>/dev/null || true
fi
echo ""
echo -e "${GREEN}✅ Instalación finalizada.${NC}"
