#!/usr/bin/env bash
set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo '========================================================'
echo '  LocalAI Boost Pack - Free Starter Edition'
echo '  1-Click Ollama Installer'
echo '========================================================'
echo ''
if ! command -v ollama &> /dev/null; then
    echo '[ERROR] Ollama CLI is not found in PATH.'
    echo 'Please download and install Ollama from https://ollama.com'
    exit 1
fi
echo '[INFO] Found Ollama. Pulling base model llama3.1:8b if missing...'
ollama pull llama3.1:8b
echo ''
echo 'Registering 4 Free Starter models into Ollama...'
echo ''
echo '[1/4] Creating no-yap-coder...'
ollama create no-yap-coder -f "$SCRIPT_DIR/Modelfiles/no-yap-coder.Modelfile"
echo '[2/4] Creating pc-auto-scripter...'
ollama create pc-auto-scripter -f "$SCRIPT_DIR/Modelfiles/pc-auto-scripter.Modelfile"
echo '[3/4] Creating raw-brainstormer...'
ollama create raw-brainstormer -f "$SCRIPT_DIR/Modelfiles/raw-brainstormer.Modelfile"
echo '[4/4] Creating character-soul-builder...'
ollama create character-soul-builder -f "$SCRIPT_DIR/Modelfiles/character-soul-builder.Modelfile"
echo ''
echo '========================================================'
echo '  Installation Successful!'
echo '  Try running: ollama run no-yap-coder'
echo '  Upgrade to PRO: https://localai-boost.gumroad.com/l/pro'
echo '========================================================'