@echo off
echo -------------------------------
echo Convertendo .webp para .png...
echo -------------------------------

:: Verifica se o ImageMagick está instalado
where magick >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ ImageMagick não está instalado ou não está no PATH.
    echo Faz download em: https://imagemagick.org
    pause
    exit /b
)

:: Loop por cada ficheiro .webp
for %%f in (*.webp) do (
    echo 🔄 A converter: %%f
    magick "%%f" "%%~nf.png"
)

echo ✅ Conversão terminada!
pause
