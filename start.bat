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

echo ���� .ysc �ļ����ƶ�����������ɡ�
timeout /t 1 >nul

php bulk_decompile.php