# Modelo Memoria Científico-Técnica para Proyectos Individuales y Coordinados en LaTeX

Este repositorio es una **plantilla editable** para redactar y publicar memorias del plan nacional en PDF mediante **GitHub Actions + GitHub Pages**.

La generación de PDFs y su publicación web es **100% automática** al hacer push a `main`. No hay que compilar en local si no queremos.

## ¿Qué contiene y cómo usarlo?

- Tres documentos LaTeX:
  - `proyectos-coordinados.tex`: Estructura para proyectos coordinados (IP + subproyectos).
  - `proyectos-individuales.tex`: Estructura para proyectos individuales.
  - `memoria.tex`: El documento de ejemplo a modificar y que se compilará automáticamente.
- Un flujo CI que construye el fichero `memoria.pdf` a partir de `memoria.tex` y lo publica como artefacto.

## Licencia y contribución

- **Licencia**: CC-BY-SA 4.0. Ver [`LICENSE`](./LICENSE).
- **_Pull Requests_**: Bienvenidos.
- **Cuestiones**: usar _Issues_ para dudas, errores o propuestas de mejora.
