@echo off
title Fetch Auto Worker (1 Saat)

:: =====================
:: AYARLAR
:: =====================

set PHP=C:\xampp\php\php.exe
set SCRIPT=C:\xampp\htdocs\yt1\fetch.php
set LOG=%~dp0update_log.txt

:: =====================
:: SUREKLI CALIS
:: =====================

:LOOP

echo ============================== >> "%LOG%"
echo %date% %time% CALISTI >> "%LOG%"

"%PHP%" "%SCRIPT%" >> "%LOG%" 2>&1

echo %date% %time% BITTI >> "%LOG%"

:: 1 saat bekle (3600 saniye)
timeout /t 3600 /nobreak >nul

goto LOOP