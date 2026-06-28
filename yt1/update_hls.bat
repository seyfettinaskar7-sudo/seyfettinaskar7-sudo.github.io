@echo off
:: PHP yolu (xampp varsayilan)
set PHP_PATH=C:\xampp\php\php.exe

:: fetch.php yolu
set FETCH_PATH=C:\xampp\htdocs\yt1\fetch.php

:: çalistir ve logla
"%PHP_PATH%" "%FETCH_PATH%" >> "%~dp0\update_log.txt" 2>&1
