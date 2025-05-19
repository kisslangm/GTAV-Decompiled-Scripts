@echo off
setlocal enabledelayedexpansion

cd /d "%~dp0scripts"

for %%f in (*.ysc) do (
    set "filename=%%~nf"
    if not exist "!filename!_ysc" (
        mkdir "!filename!_ysc"
    )
    move "%%f" "!filename!_ysc\!filename!.ysc.full" >nul
)

echo 所有 .ysc 文件已移动并重命名完成。
timeout /t 1 >nul

php bulk_decompile.php