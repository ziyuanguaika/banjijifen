@echo off
chcp 65001 >nul
cd /d D:\nginx\www\test_project

echo.
echo ========================================
echo          Git History
echo ========================================
echo.

git log --oneline --graph --all --decorate

echo.
echo ========================================
echo The hash on the left is the commit ID
echo Use this ID for rollback
echo ========================================
echo.
pause
