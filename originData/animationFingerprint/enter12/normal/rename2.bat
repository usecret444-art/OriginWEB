@echo off
setlocal enabledelayedexpansion

set "folder=%cd%"
echo Your folder: %folder%
echo.

REM Total frames = 24
set max=24

for /l %%i in (0,1,24) do (
    set /a rev=max-%%i

    set "src=%folder%\kgd_osfingerprint_fadein_%%i.png"
    set "dst=%folder%\kgd_osfingerprint_fadeout_!rev!.png"

    echo Checking: "!src!"

    if exist "!src!" (
        echo → Copy to "!dst!"
        copy /Y "!src!" "!dst!" >nul
    ) else (
        echo ✗ Missing file: "!src!"
    )

    echo.
)

echo =======================
echo       COMPLETE
echo =======================
pause
