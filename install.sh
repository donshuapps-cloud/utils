#!/usr/bin/env bash
# ============================================================
# Script: install.sh
# Descripción: Instalador para utilidades Donshu Apps
# Autor: Donshu
# Contacto: donshu.apps@gmail.com
# ============================================================
set -euo pipefail
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
NC='\033[0m'
INSTALL_DIR="/usr/local/bin"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo -e "${BLUE}╔══════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║              Instalador - Utilidades Donshu Apps            ║${NC}"
echo -e "${BLUE}╚══════════════════════════════════════════════════════════════╝${NC}"
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
# Verificar dependencias
echo -e "${YELLOW}Verificando dependencias del sistema...${NC}"
if command -v pandoc &> /dev/null; then
    echo -e "  ${GREEN}✓${NC} pandoc: $(pandoc --version | head -n1)"
else
    echo -e "  ${RED}✗${NC} pandoc no instalado"
    echo -e "    Instalar con: sudo apt install pandoc (Ubuntu/Debian)"
    echo -e "                 brew install pandoc (macOS)"
fi
if command -v xelatex &> /dev/null; then
    echo -e "  ${GREEN}✓${NC} xelatex: disponible"
else
    echo -e "  ${RED}✗${NC} xelatex no instalado"
    echo -e "    Instalar con: sudo apt install texlive-xetex (Ubuntu/Debian)"
    echo -e "                 brew install --cask mactex (macOS)"
fi
echo ""
echo -e "${BLUE}Nota:${NC} Para usar md2pdf, asegúrate de tener pandoc y una distribución LaTeX instalada."
