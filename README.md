# Utils - Herramientas para Desarrollo de Sistemas
**Autor:** Donshu  
**Contacto:** donshu.apps@gmail.com  
**GitHub:** https://github.com/donshuapps-cloud  
**Versión:** 2.2.0
---
## 📦 Herramientas incluidas
### `md2pdf` - Conversor de Markdown a PDF
Wrapper para pandoc que convierte archivos Markdown a PDF con soporte para batch processing, detección automática de codificación UTF-8 (BOM), y verificación completa de dependencias.
---
## ✨ Características
- ✅ Conversión individual o por lotes (`--batch`)
- ✅ Detección automática de UTF-8 con/sin BOM
- ✅ Fuente personalizable (default: Arial)
- ✅ Soporte múltiples engines LaTeX (xelatex, lualatex, pdflatex)
- ✅ Plantillas personalizadas
- ✅ Verificación completa de dependencias (`--check-deps`)
- ✅ Validación de dependencias SVG (rsvg-convert)
- ✅ Modo verbose y debug para depuración
- ✅ Manejo elegante de errores con sugerencias de solución
---
## 📋 Requisitos del sistema
| Dependencia | Estado | Instalación |
|-------------|--------|-------------|
| pandoc | Requerido | `sudo apt install pandoc` |
| xelatex/lualatex | Requerido | `sudo apt install texlive-xetex` |
| rsvg-convert | Opcional (SVG) | `sudo apt install librsvg2-bin` |
| xxd | Opcional (BOM) | `sudo apt install xxd` |
**Instalación completa (recomendada):**
```bash
sudo apt update && sudo apt install -y pandoc texlive-xetex librsvg2-bin xxd
```
---
## 🚀 Instalación
### Método 1: Instalador automático
```bash
git clone https://github.com/donshuapps-cloud/utils.git
cd utils
chmod +x install.sh
sudo ./install.sh
```
### Método 2: Instalación manual
```bash
git clone https://github.com/donshuapps-cloud/utils.git
cd utils
sudo cp md2pdf /usr/local/bin/
sudo chmod +x /usr/local/bin/md2pdf
```
### Método 3: Uso local (sin instalar)
```bash
git clone https://github.com/donshuapps-cloud/utils.git
cd utils
./md2pdf --help
```
---
## 📖 Uso básico
### Verificar dependencias
```bash
md2pdf --check-deps
```
### Conversión individual
```bash
md2pdf documento.md
md2pdf -o ./pdfs -f "Times New Roman" documento.md
md2pdf -e lualatex documento-con-svg.md
```
### Conversión por lotes
```bash
# Directorio completo
md2pdf --batch ./docs/ -o ./pdfs/
# Archivos específicos
md2pdf --batch capitulo-1.md capitulo-2.md capitulo-3.md
# Wildcards (shell expansion)
md2pdf --batch docs/*.md
```
### Opciones avanzadas
```bash
# Modo verbose (muestra comandos)
md2pdf -v documento.md
# Modo debug (muestra errores completos)
md2pdf --debug documento.md
# Deshabilitar detección de BOM
md2pdf --no-bom documento.md
# Saltar verificación de SVG
md2pdf --skip-svg-check documento.md
# Usar plantilla personalizada
md2pdf -t mi-plantilla.latex documento.md
```
---
## 🔧 Ejemplos prácticos
### Ejemplo 1: Convertir toda la documentación de un proyecto
```bash
cd ~/mi-proyecto
md2pdf --batch docs/ -o pdfs/ -f "Times New Roman"
```
### Ejemplo 2: Procesamiento recursivo con find
```bash
find . -name "*.md" -not -path "./node_modules/*" -exec md2pdf {} \; -o ./output/
```
### Ejemplo 3: Integración con VSCode (tasks.json)
```json
{
    "version": "2.0.0",
    "tasks": [
        {
            "label": "Convert MD to PDF",
            "type": "shell",
            "command": "md2pdf",
            "args": ["${file}"],
            "group": "build",
            "problemMatcher": []
        },
        {
            "label": "Convert All MD to PDF",
            "type": "shell",
            "command": "md2pdf",
            "args": ["--batch", "${workspaceFolder}/docs/", "-o", "${workspaceFolder}/pdfs/"],
            "group": "build"
        }
    ]
}
```
---
## 🐛 Solución de problemas
### Error: "xelatex no está disponible"
```bash
sudo apt install texlive-xetex
```
### Error: "rsvg-convert no está instalado"
```bash
sudo apt install librsvg2-bin
# Alternativa: usar engine lualatex
md2pdf -e lualatex documento.md
```
### Error: "Conversión fallida con imágenes SVG"
```bash
# Opción 1: Instalar rsvg-convert
sudo apt install librsvg2-bin
# Opción 2: Usar lualatex
md2pdf -e lualatex documento.md
# Opción 3: Ver error detallado
md2pdf --debug documento.md
```
### Error: "BOM detection limitada"
```bash
sudo apt install xxd
```
---
## 📊 Reporte de dependencias
Ejecuta `md2pdf --check-deps` para ver:
```
════════════════════════════════════════════════════════════════
              REPORTE DE DEPENDENCIAS - md2pdf                  
════════════════════════════════════════════════════════════════
  ✓ pandoc: pandoc 3.1.2
  ✓ xelatex: disponible
  ✓ rsvg-convert: disponible
  ✓ xxd: disponible (detección UTF-8 BOM)
════════════════════════════════════════════════════════════════
Comando para instalar todas las dependencias:
  sudo apt update && sudo apt install pandoc texlive-xetex librsvg2-bin xxd
```
---
## 📝 Historial de versiones
| Versión | Fecha | Cambios |
|---------|-------|---------|
| 2.2.0 | 2026-03-25 | Verificación completa de dependencias, flag --check-deps, mejor manejo de SVG |
| 2.1.1 | 2026-03-25 | Mejor manejo de errores y debugging |
| 2.1.0 | 2026-03-25 | Corrección de parsing de argumentos |
| 2.0.0 | 2026-03-25 | Batch processing y UTF-8 BOM handling |
---
## 🤝 Contribuir
1. Fork el repositorio
2. Crea una rama: `git checkout -b feature/nueva-funcionalidad`
3. Commit tus cambios: `git commit -am 'Añadir nueva funcionalidad'`
4. Push: `git push origin feature/nueva-funcionalidad`
5. Abre un Pull Request
---
## 📄 Licencia
MIT License - Ver archivo [LICENSE](LICENSE) para detalles
---
**Mantenido por Donshu** - Desarrollo de Sistemas  
📧 donshu.apps@gmail.com | 🐙 https://github.com/donshuapps-cloud
