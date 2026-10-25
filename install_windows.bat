@echo off
setlocal enabledelayedexpansion
chcp 65001 >nul
echo ========================================================
echo   LocalAI Boost Pack - Free Starter Edition (v1.1)
echo   1-Click Ollama Installer
echo ========================================================
echo.
where ollama >nul 2>nul
if %ERRORLEVEL% neq 0 (
    echo [ERROR] Ollama command line utility not found in PATH.
    echo Please download and install Ollama from https://ollama.com
    pause
    exit /b 1
)
echo [INFO] Found Ollama. Pulling base model 'llama3.1:8b' if missing...
ollama pull llama3.1:8b
echo.
echo Registering 4 Free Starter models into Ollama...
echo.
echo [1/4] Creating no-yap-coder...
ollama create no-yap-coder -f "%~dp0Modelfiles\no-yap-coder.Modelfile"
echo [2/4] Creating pc-auto-scripter...
ollama create pc-auto-scripter -f "%~dp0Modelfiles\pc-auto-scripter.Modelfile"
echo [3/4] Creating raw-brainstormer...
ollama create raw-brainstormer -f "%~dp0Modelfiles\raw-brainstormer.Modelfile"
echo [4/4] Creating character-soul-builder...
ollama create character-soul-builder -f "%~dp0Modelfiles\character-soul-builder.Modelfile"
echo.
echo ========================================================
echo   Installation Successful!
echo.  
echo   Run any of the following commands to launch:
echo     ollama run no-yap-coder
echo     ollama run pc-auto-scripter
echo     ollama run raw-brainstormer
echo     ollama run character-soul-builder
echo.
echo   Ready for all 20 specialized engines?
echo   Upgrade to PRO: https://localaiboost.gumroad.com/l/pro
echo ========================================================
pause