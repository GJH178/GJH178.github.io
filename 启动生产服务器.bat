@echo off
chcp 65001 >nul
cd /d "%~dp0personal-website"
echo ========================================
echo   谷佳豪个人网站 - 生产模式
echo ========================================
echo.
npm run serve
pause
