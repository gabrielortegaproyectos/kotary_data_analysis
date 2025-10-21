#!/bin/bash
# Script para compilar y ver la documentación del proyecto

set -e

echo "🔨 Compilando documentación..."
uv run sphinx-build -b html docs/source docs/build/html

echo "✅ Documentación compilada exitosamente"
echo "📂 La documentación está en: docs/build/html/index.html"
echo ""
echo "🌐 Abriendo en el navegador..."
xdg-open docs/build/html/index.html || echo "No se pudo abrir el navegador automáticamente"
echo ""
echo "💡 También puedes servir la documentación con:"
echo "   cd docs/build/html && python -m http.server 8000"
