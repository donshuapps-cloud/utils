# Changelog - md2pdf
Todos los cambios notables en el proyecto md2pdf se documentarán en este archivo.
El formato está basado en [Keep a Changelog](https://keepachangelog.com/es-ES/1.0.0/),
y este proyecto adhiere a [Semantic Versioning](https://semver.org/spec/v2.0.0.html).
---
## [2.2.0] - 2026-03-25
### Añadido
- Flag `--check-deps` para verificar dependencias del sistema
- Reporte detallado de dependencias con comandos de instalación
- Verificación de `rsvg-convert` para imágenes SVG con mensajes de ayuda
- Verificación de `xxd` para detección UTF-8 BOM
- Mensajes de error mejorados con sugerencias de solución
- Recomendación de usar engine `lualatex` como alternativa para SVG
### Cambiado
- Mejor manejo de argumentos con detección temprana de flags
- Validación condicional de LaTeX (no se verifica en `--help` o `--check-deps`)
- Mensajes de warning más claros para dependencias opcionales
### Corregido
- Error donde `--check-deps` no era reconocido
- Problema con parsing de argumentos en modo batch
---
## [2.1.1] - 2026-03-25
### Añadido
- Flag `--debug` para mostrar errores completos de pandoc
- Mejor manejo de archivos temporales con limpieza garantizada
- Validación de existencia de archivos antes de procesar
### Cambiado
- Reemplazo de `eval` por arrays para mayor seguridad
- Mejor manejo de espacios en rutas
- Mensajes de error más descriptivos
---
## [2.1.0] - 2026-03-25
### Añadido
- Soporte para batch processing con flag `--batch`
- Detección y eliminación automática de UTF-8 BOM
- Flag `--no-bom` para deshabilitar detección de BOM
- Modo verbose con flag `-v`
### Cambiado
- Corrección en parsing de argumentos
- Mejor manejo de `--help` en cualquier posición
---
## [2.0.0] - 2026-03-25
### Añadido
- Versión inicial estable
- Conversión individual de Markdown a PDF
- Soporte para múltiples engines LaTeX
- Fuente personalizable
- Plantillas personalizadas
- Soporte para CSS
### Características
- Validación de dependencias (pandoc, engine LaTeX)
- Colores en output para mejor legibilidad
- Detección de archivos con extensión .md
- Directorio de salida personalizable
---
## [1.0.0] - 2026-03-24
### Añadido
- Script base con funcionalidad básica
- Wrapper simple para pandoc
- Opciones básicas: fuente, engine, salida
---
**Mantenido por Donshu** - Desarrollo de Sistemas  
📧 donshu.apps@gmail.com | 🐙 https://github.com/donshuapps-cloud
