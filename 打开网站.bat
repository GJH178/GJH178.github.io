@echo off
chcp 65001 >nul
title 谷佳豪个人网站

cd /d "%~dp0personal-website"

echo ========================================
echo   正在启动网站，请稍候...
echo ========================================

REM 关闭占用3000端口的进程
for /f "tokens=5" %%a in ('netstat -ano ^| findstr :3000 ^| findstr LISTENING 2^nul') do (
    echo 关闭占用端口的进程...
    taskkill /F /PID %%a >nul 2>&1
)

REM 等待端口释放
timeout /t 1 /nobreak >nul

REM 启动服务器并打开浏览器
start http://localhost:3000
npm run dev

pause
