@echo off
setlocal enabledelayedexpansion

REM Copy enter_normal_2_0.png -> kgd_osfingerprint_fadein_0.png
for /l %%i in (0,1,24) do (
    set "src=enter_normal_%%i.png"
    set "dst=kgd_osfingerprint_fadein_%%i.png"

    if exist "!src!" (
        copy "!src!" "!dst!" >nul
        echo Created: !dst!
    ) else (
        echo Missing: !src!
    )
)

echo Done!
pause
