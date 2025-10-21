# Documentación del Proyecto

Este directorio contiene la documentación del proyecto **kotari-gender-data-analysis** construida con Sphinx.

## 📚 Estructura de la Documentación

```
docs/
├── source/              # 📝 Archivos fuente - EDITAS AQUÍ
│   ├── index.rst       # Página principal
│   ├── data_review.rst # Análisis exploratorio de datos
│   ├── conf.py         # Configuración de Sphinx
│   └── modules.rst     # Documentación de API (auto-generada)
│
└── build/              # 🌐 Documentación compilada - NO EDITAR
    └── html/
        └── index.html  # Página HTML generada automáticamente
```

## 🔄 ¿Cómo Funciona?

### Flujo de Trabajo de Documentación

```
┌─────────────────────┐
│ 1. EDITAR           │
│ Modificas archivos  │  <-- Aquí trabajas tú
│ .rst en source/     │
└─────────┬───────────┘
          │
          ▼
┌─────────────────────┐
│ 2. COMPILAR         │
│ Ejecutas comando    │  <-- Necesario después de cada edición
│ sphinx-build        │
└─────────┬───────────┘
          │
          ▼
┌─────────────────────┐
│ 3. VER RESULTADO    │
│ Abres HTML en       │  <-- Aquí ves los cambios
│ navegador           │
└─────────────────────┘
```

### ⚠️ **Pregunta Importante: ¿Tengo que hacer build cada vez?**

**Sí, debes compilar cada vez que edites la documentación.**

- ✅ **Editas** `docs/source/data_review.rst` 
- ✅ **Compilas** con `uv run sphinx-build -b html source build/html`
- ✅ **Ves cambios** en el navegador

**Si NO compilas**, los archivos `.rst` editados NO se reflejarán en los HTML.### 💡 Consejo: Compilación AutomáticaPara evitar compilar manualmente cada vez, usa **sphinx-autobuild**:```bash# Instalar (ya incluido en el proyecto)uv add sphinx-autobuild# Iniciar servidor con recarga automáticacd docsuv run sphinx-autobuild source build/html```Esto abrirá un servidor en `http://127.0.0.1:8000` que **recompila automáticamente** cuando guardas cambios.---## 🚀 Guía Rápida de Uso### 1️⃣ Compilar Documentación (Método Normal)```bash# Desde la raíz del proyectocd docs# Compilar documentaciónuv run sphinx-build -b html source build/html# Ver en navegadorxdg-open build/html/index.html  # Linux```### 2️⃣ Compilar con Servidor Auto-Recarga (Recomendado)```bashcd docs# Inicia servidor con recarga automáticauv run sphinx-autobuild source build/html# Abre tu navegador en: http://127.0.0.1:8000# Ahora cada vez que guardes un .rst, se recompila automáticamente!```### 3️⃣ Limpiar y Recompilar desde Cero```bashcd docs# Limpiar archivos antiguosrm -rf build/# Recompilar todouv run sphinx-build -b html source build/html```---## 📝 Editar Documentación### Agregar Nueva Página**Paso 1: Crear archivo .rst**```bashcd docs/sourcenano mi_nuevo_analisis.rst```Contenido del archivo:```rstMi Nuevo Análisis=================Introducción------------Aquí va el contenido...Sección 1~~~~~~~~~Más contenido...```**Paso 2: Agregar al índice**Edita `docs/source/index.rst`:```rst.. toctree::   :maxdepth: 2   data_review   mi_nuevo_analisis   <-- Agrega esta línea```**Paso 3: Compilar**```bashcd docsuv run sphinx-build -b html source build/html```**Paso 4: Ver resultado**```bashxdg-open build/html/index.html```---## 📖 Sintaxis reStructuredText Básica### Títulos```rstTítulo Principal================Subtítulo---------Sub-subtítulo~~~~~~~~~~~~~Sección^^^^^^^```### Listas```rst- Item 1- Item 2    - Sub-item1. Primero2. Segundo```### Enlaces y Referencias```rstVer :doc:`data_review` para más información.`Enlace externo <https://example.com>`_```### Código```rst.. code-block:: python   def mi_funcion():       return "Hola"```

### Bloques Especiales

```rst
.. note::
   Esto es una nota importante.

.. warning::
   Esto es una advertencia.

.. tip::
   Esto es un consejo útil.
```

### Imágenes

```rst
.. image:: images/mi_grafico.png
   :width: 600px
   :align: center
   :alt: Descripción de la imagen
```

---

## 🔧 Configuración

### Cambiar Tema

Edita `docs/source/conf.py`:

```python
html_theme = 'sphinx_rtd_theme'  # Tema actual (ReadTheDocs)
# html_theme = 'alabaster'       # Tema alternativo
# html_theme = 'furo'            # Tema moderno
```

### Agregar Extensiones

En `docs/source/conf.py`:

```python
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.napoleon',
    'myst_parser',       # Soporte para Markdown
    'nbsphinx',          # Soporte para Jupyter notebooks
]
```

---

## 🎯 Casos de Uso Comunes

### Actualizar Conclusiones del Notebook

1. **Editas el notebook** `1_Data_Review.ipynb`
2. **Actualizas** `docs/source/data_review.rst` con nuevas conclusiones
3. **Compilas**: `cd docs && uv run sphinx-build -b html source build/html`
4. **Verificas** en el navegador

### Agregar Nuevo Análisis

1. **Creas** `docs/source/analisis_genero.rst`
2. **Agregas** al `index.rst` en el toctree
3. **Compilas** la documentación
4. **Publicas** (opcional: commit y push al repo)

### Incluir Notebook Directamente

```rst
Análisis en Notebook
====================

.. nbsphinx::

   ../../notebooks/1_Data_Review.ipynb
```

Esto renderiza el notebook completo en la documentación!

---

## 📦 Dependencias de Documentación

Ya instaladas en el proyecto:

```toml
[project.optional-dependencies]
docs = [
    "sphinx>=7.0",
    "sphinx-rtd-theme>=1.3",
    "myst-parser>=2.0",
    "nbsphinx>=0.9",
    "sphinx-autobuild>=2021.3"
]
```

---

## 🚨 Solución de Problemas

### Error: "sphinx-build: command not found"

```bash
uv add sphinx sphinx-rtd-theme
```

### Error al compilar: "WARNING: document isn't included in any toctree"

Agrega el documento al `index.rst` en el bloque `toctree`.

### Los cambios no aparecen

```bash
# Limpia y recompila
cd docs
rm -rf build/
uv run sphinx-build -b html source build/html
```

### Puerto 8000 ocupado (sphinx-autobuild)

```bash
# Usa otro puerto
uv run sphinx-autobuild source build/html --port 8080
```

---

## 🌐 Publicar Documentación

### GitHub Pages

1. Compila la documentación
2. Copia `docs/build/html/` a una rama `gh-pages`
3. Activa GitHub Pages en settings del repositorio

### ReadTheDocs

1. Conecta tu repositorio en https://readthedocs.org
2. ReadTheDocs compilará automáticamente en cada push
3. La documentación estará en `tu-proyecto.readthedocs.io`

---

## 📚 Recursos Adicionales

- [Documentación de Sphinx](https://www.sphinx-doc.org/)
- [Guía de reStructuredText](https://www.sphinx-doc.org/en/master/usage/restructuredtext/basics.html)
- [Tema ReadTheDocs](https://sphinx-rtd-theme.readthedocs.io/)
- [nbsphinx - Notebooks en Sphinx](https://nbsphinx.readthedocs.io/)

---

## ✨ Resumen

| Acción | Comando |
|--------|---------|
| Compilar documentación | `cd docs && uv run sphinx-build -b html source build/html` |
| Servidor auto-recarga | `cd docs && uv run sphinx-autobuild source build/html` |
| Limpiar y recompilar | `cd docs && rm -rf build/ && uv run sphinx-build -b html source build/html` |
| Ver en navegador | `xdg-open docs/build/html/index.html` |

**Recuerda**: Cada edición en `source/` requiere recompilación para verse en HTML. Usa `sphinx-autobuild` para desarrollo continuo.
