@echo off
chcp 65001 >nul
cd /d "%~dp0personal-website"
echo ========================================
echo   谷佳豪个人网站 - 开发模式
echo ========================================
echo.
npm run dev
pause
