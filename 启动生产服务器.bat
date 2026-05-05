@echo off
chcp 65001 >nul
title 谷佳豪个人网站 - 生产模式

cd /d "%~dp0personal-website"

echo ========================================
echo   谷佳豪个人网站 - 生产模式
echo ========================================
echo.
echo   正在构建最新版本...
call npm run build
echo.
echo   启动生产服务器...
start http://localhost:3000
npm run serve
pause
