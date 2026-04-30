@echo off
chcp 65001 >nul
echo ========================================
echo   谷佳豪个人网站 - 快速启动
echo ========================================
echo.

cd /d "%~dp0personal-website"

echo [1/4] 检查端口 3000 占用情况...
for /f "tokens=5" %%a in ('netstat -ano ^| findstr :3000 ^| findstr LISTENING') do (
    echo [关闭] 端口 3000 被占用，进程 PID: %%a
    taskkill /F /PID %%a >nul 2>&1
)

echo [2/4] 清理残留进程...
for /f "tokens=1" %%a in ('tasklist /FI "IMAGENAME eq node.exe" /FO LIST ^| findstr "PID"') do (
    for /f "tokens=2" %%b in ("%%a") do taskkill /F /PID %%b >nul 2>&1
)

timeout /t 2 /nobreak >nul

echo [3/4] 启动开发服务器...
start "" "http://localhost:3000"
npm run dev

echo.
echo ========================================
echo   启动成功！
echo   请访问: http://localhost:3000
echo   按 Ctrl+C 停止服务器
echo ========================================
pause
