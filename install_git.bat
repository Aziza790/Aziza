@echo off
chcp 65001 >nul
title Git avtomatik o'rnatish

echo ==================================
echo       GIT AVTOMATIK O'RNATISH
echo ==================================
echo.

echo [1/3] Git o'rnatilishi tekshirilmoqda...
where git >nul 2>&1

if %errorlevel%==0 (
    echo Git allaqachon o'rnatilgan!
    git --version
    goto end
)

echo.
echo [2/3] Git yuklab olinmoqda va o'rnatilmoqda...
winget install --id Git.Git -e --source winget --accept-source-agreements --accept-package-agreements

if %errorlevel% neq 0 (
    echo.
    echo XATOLIK: Git o'rnatilmadi!
    pause
    exit /b 1
)

echo.
echo [3/3] O'rnatish yakunlandi!
echo.
echo Git versiyasi:
git --version

:end
echo.
echo ==================================
echo          JARAYON TUGADI
echo ==================================
pause