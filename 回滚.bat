@echo off
chcp 65001 >nul
cd /d D:\nginx\www\test_project

echo.
echo ========================================
echo          Rollback to Version
echo ========================================
echo.
echo WARNING: Uncommitted changes will be lost!
echo.

echo Recent 10 versions:
echo.
git log --oneline -10

echo.
set /p commit="Enter commit hash to rollback to: "

if "%commit%"=="" (
    echo.
    echo [ERROR] No commit hash entered, canceling rollback
    pause
    exit /b
)

echo.
echo Rolling back to: %commit%
echo.
set /p confirm="Confirm rollback? (Y/N): "

if /i not "%confirm%"=="Y" (
    echo.
    echo [INFO] Rollback canceled
    pause
    exit /b
)

echo.
echo Rolling back...

git reset --hard %commit%

if errorlevel 1 (
    echo.
    echo [ERROR] Rollback failed! Please check the commit hash
    pause
    exit /b
)

echo.
echo ========================================
echo          Rollback Successful!
echo ========================================
echo.
echo Current version:
git log --oneline -1
echo.
echo To push to GitHub, run Save.bat
echo.
pause
