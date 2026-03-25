# Utils - Herramientas para Desarrollo de Sistemas
Autor: **Donshu**  
Contacto: donshu.apps@gmail.com  
GitHub: https://github.com/donshuapps-cloud
## 📦 Herramientas incluidas
### `md2pdf` - Conversor de Markdown a PDF
Wrapper para pandoc que convierte archivos Markdown a PDF con soporte para batch processing, detección automática de codificación UTF-8 y manejo de BOM.
#### Características
- ✅ Conversión individual o por lotes (`--batch`)
- ✅ Detección automática de UTF-8 con/sin BOM
- ✅ Fuente personalizable (default: Arial)
- ✅ Soporte múltiples engines LaTeX (xelatex, lualatex, pdflatex)
- ✅ Plantillas personalizadas
- ✅ Validación de dependencias
- ✅ Modo verbose para depuración
#### Instalación
```bash
# Clonar el repositorio
git clone https://github.com/donshuapps-cloud/utils.git
cd utils
# Instalar (requiere sudo para /usr/local/bin)
sudo ./install.sh
# O instalación manual
sudo cp md2pdf /usr/local/bin/
sudo chmod +x /usr/local/bin/md2pdf
```
#### Requisitos
```bash
# Ubuntu/Debian
sudo apt install pandoc texlive-xetex texlive-fonts-recommended
# macOS
brew install pandoc basictex
# Windows (con Chocolatey)
choco install pandoc miktex
```
#### Uso básico
```bash
# Convertir un archivo
md2pdf documento.md
# Especificar directorio de salida
md2pdf -o ./pdfs documento.md
# Cambiar fuente
md2pdf -f "Times New Roman" documento.md
# Convertir todos los archivos .md en un directorio
md2pdf --batch ./documentos/
# Convertir archivos específicos por lotes
md2pdf --batch archivo1.md archivo2.md archivo3.md
# Usar engine alternativo
md2pdf -e lualatex documento.md
# Usar plantilla personalizada
md2pdf -t mi-plantilla.latex documento.md
# Modo verbose para depuración
md2pdf -v documento.md
```
#### Ejemplos prácticos
```bash
# Convertir toda la documentación de un proyecto
md2pdf --batch docs/*.md -o ./pdfs -f "Times New Roman"
# Generar PDFs para cada capítulo de un libro
md2pdf --batch capitulo-*.md -o ./libro/
# Combinar con find para procesamiento recursivo
find . -name "*.md" -exec md2pdf {} \; -o ./output/
```
#### Integración con VSCode
Añade esta tarea a tu `.vscode/tasks.json`:
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
            "label": "Convert All MD to PDF (Batch)",
            "type": "shell",
            "command": "md2pdf",
            "args": ["--batch", "${workspaceFolder}/docs/", "-o", "${workspaceFolder}/pdfs/"],
            "group": "build"
        }
    ]
}
```
#### Solución de problemas
**Error: "xelatex no encontrado"**
```bash
# Instalar LaTeX con soporte XeLaTeX
sudo apt install texlive-xetex  # Linux
brew install --cask mactex       # macOS
```
**Error con caracteres especiales o emojis**
- Asegúrate de usar `--engine=xelatex` (default) que tiene mejor soporte Unicode
- Verifica que el archivo esté en UTF-8: `file -i documento.md`
**El batch process no encuentra archivos**
- Usa rutas absolutas o relativas desde el directorio actual
- Verifica que los archivos tengan extensión `.md`
#### Contribuir
1. Fork el repositorio
2. Crea una rama: `git checkout -b feature/nueva-funcionalidad`
3. Commit tus cambios: `git commit -am 'Añadir nueva funcionalidad'`
4. Push: `git push origin feature/nueva-funcionalidad`
5. Abre un Pull Request
#### Licencia
MIT License - Ver archivo [LICENSE](LICENSE) para detalles
---
**Mantenido por Donshu** - Desarrollo de Sistemas
