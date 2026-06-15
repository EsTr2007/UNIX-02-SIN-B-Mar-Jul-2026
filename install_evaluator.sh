#!/bin/bash

##############################################################################
# SCRIPT: install_evaluator.sh
# Instalador rápido del evaluador de rama blackhatbash
##############################################################################

set -euo pipefail

echo "🚀 Instalador del Evaluador blackhatbash"
echo "========================================"
echo ""

# Detectar sistema operativo
OS="$(uname -s)"

echo "📋 Verificando prerequisitos..."

# Verificar git
if ! command -v git &> /dev/null; then
    echo "❌ Git no está instalado. Por favor instala git primero."
    exit 1
fi
echo "✓ Git instalado"

# Verificar bash version
bash_version=$(bash --version | head -1)
echo "✓ $bash_version"

# Crear directorios necesarios
echo ""
echo "📁 Creando directorios..."

mkdir -p ~/bin
mkdir -p ~/blackhatbash_reports

echo "✓ Directorios creados"

# Copiar script
echo ""
echo "📦 Instalando script evaluador..."

if [ -f "/home/claude/evaluate_blackhatbash.sh" ]; then
    cp /home/claude/evaluate_blackhatbash.sh ~/bin/evaluate_blackhatbash.sh
    chmod +x ~/bin/evaluate_blackhatbash.sh
    echo "✓ Script instalado en ~/bin/evaluate_blackhatbash.sh"
else
    echo "❌ No se encontró el script original"
    exit 1
fi

# Crear alias
echo ""
echo "⚙️ Configurando alias..."

if [ -f ~/.bashrc ]; then
    if ! grep -q "evaluate_blackhatbash" ~/.bashrc; then
        echo "alias evaluate='~/bin/evaluate_blackhatbash.sh'" >> ~/.bashrc
        echo "✓ Alias agregado a ~/.bashrc"
    fi
fi

if [ -f ~/.zshrc ]; then
    if ! grep -q "evaluate_blackhatbash" ~/.zshrc; then
        echo "alias evaluate='~/bin/evaluate_blackhatbash.sh'" >> ~/.zshrc
        echo "✓ Alias agregado a ~/.zshrc"
    fi
fi

echo ""
echo "✅ ¡Instalación completada!"
echo ""
echo "Ahora puedes usar:"
echo "  • evaluate /ruta/al/repo blackhatbash"
echo "  • ~/bin/evaluate_blackhatbash.sh /ruta/al/repo blackhatbash"
echo ""
echo "Ejemplo:"
echo "  evaluate ~/UNIX-02-SIN-B-Mar-Jul-2026 blackhatbash"
echo ""
echo "📖 Para más información, lee README_EVALUATOR.md"
echo ""
